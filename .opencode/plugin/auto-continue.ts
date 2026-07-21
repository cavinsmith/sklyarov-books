import type { Plugin } from "@opencode-ai/plugin"
import { existsSync } from "node:fs"
import { join } from "node:path"

/**
 * Auto-continue: работа роя не должна ждать человека.
 *
 * Два триггера:
 *
 * 1. ТЕРМИНАЛЬНЫЕ ошибки провайдера (isRetryable=false, например HTTP 400):
 *    для них opencode эмитит session.error, плагин ждёт 10 секунд и
 *    отправляет в чат "Continue". Connection-ошибки ("Unable to connect",
 *    таймауты, "Remote end closed") opencode 1.18+ ретраит сам, бесконечно,
 *    ~раз в 30с (session.status=retry, без session.error) и сам продолжает
 *    работу, когда upstream оживает — плагину там делать нечего.
 *
 * 2. ПРОСТОЙ: главная сессия отчиталась session.idle, и IDLE_TIMEOUT_MS
 *    (2 минуты) не было НИКАКОЙ активности ни в ней, ни в сабагентах
 *    (message.updated / message.part.updated любой сессии сбрасывают
 *    таймер) — плагин шлёт "Continue" сам. Работа бесконечна; ждать
 *    команды человека не нужно.
 *
 * Выключатель: файл .opencode/STOP (тот же, которым протокол останавливает
 * циклы оркестратора) — пока он существует, idle-автопродолжение не
 * срабатывает. Без него единственный способ остановить рой — убить TUI:
 * даже после Esc сессия станет idle и через 2 минуты поедет дальше.
 */

const RETRY_DELAY_MS = 5_000
const IDLE_TIMEOUT_MS = 20_000
const IDLE_POLL_MS = 3_000
const CONTINUE_TEXT = "Continue"

// MessageAbortedError — это Esc/Ctrl+C от пользователя, а не сбой upstream.
// Мгновенное автопродолжение здесь скрыло бы сам факт остановки; прерванная
// сессия всё равно возобновится по idle-ветке через 2 минуты (см. STOP).
const SKIP_ERRORS = new Set(["MessageAbortedError"])

const sleep = (ms: number) => new Promise((resolve) => setTimeout(resolve, ms))

type SessionError = { name: string; data?: { message?: string } }

const errorText = (error: SessionError | undefined) =>
  error?.data?.message ?? error?.name ?? "unknown error"

export const AutoContinuePlugin: Plugin = async (ctx) => {
  const { client } = ctx
  console.log("[auto-continue] plugin loaded")

  // Корень проекта — для проверки .opencode/STOP.
  const root: string =
    (ctx as any).directory ??
    (ctx as any).worktree ??
    (ctx as any).app?.path?.root ??
    process.cwd()
  const stopRequested = () => existsSync(join(root, ".opencode", "STOP"))

  // console.log из плагина не виден в TUI — дублируем ключевые события тостами.
  const toast = (message: string, variant: "info" | "warning" = "info") =>
    client.tui
      .showToast({ body: { title: "auto-continue", message, variant } })
      .catch(() => {})

  void toast("plugin loaded (errors + idle 2m)")

  // Одна сессия — один запланированный "Continue"; повторные триггеры,
  // прилетевшие во время ожидания, схлопываются.
  const pending = new Set<string>()

  // sessionID -> isMain (без parentID). Кэш, чтобы не дёргать get на каждый event.
  const isMainCache = new Map<string, boolean>()
  // Главные сессии, находящиеся в простое: sessionID -> момент session.idle.
  const idleSince = new Map<string, number>()
  // Последняя активность ЛЮБОЙ сессии (главной или сабагента).
  let lastWorkAt = Date.now()

  const classify = async (sessionID: string): Promise<boolean> => {
    const cached = isMainCache.get(sessionID)
    if (cached !== undefined) return cached
    const session = await client.session
      .get({ path: { id: sessionID } })
      .catch(() => undefined)
    const isMain = !!session?.data && !session.data.parentID
    if (session?.data) isMainCache.set(sessionID, isMain)
    return isMain
  }

  const markActivity = (_sessionID?: string) => {
    lastWorkAt = Date.now()
    // Раньше тут был idleSince.delete(sessionID) — баг: финализирующий
    // message.updated/message.part.updated (метаданные только что
    // завершённого ответа) надёжно прилетает ПОСЛЕ session.idle и гонкой
    // стирал только что взведённую запись в ту же миллисекунду — idle-ветка
    // никогда не успевала выжить. Подтверждено логированием мутаций idleSince
    // на изолированном стенде: 2026-07-20.
  }

  const scheduleContinue = async (
    sessionID: string,
    reason: string,
    delayMs: number,
  ) => {
    // Автопродолжаем только главную сессию — у сабагентов есть parentID,
    // их разруливает родительская сессия.
    if (!(await classify(sessionID))) return

    if (pending.has(sessionID)) return
    pending.add(sessionID)
    console.log(
      `[auto-continue] ${reason} in ${sessionID} — sending "${CONTINUE_TEXT}" in ${delayMs / 1000}s`,
    )
    void toast(`${reason} — "${CONTINUE_TEXT}" in ${delayMs / 1000}s`, "warning")

    try {
      // Бесконечно: пока сервер не примет сообщение, ждём и пробуем снова.
      while (true) {
        await sleep(delayMs)
        const result = await client.session
          .promptAsync({
            path: { id: sessionID },
            body: { parts: [{ type: "text", text: CONTINUE_TEXT }] },
          })
          .catch((err) => ({ data: undefined, error: err }))
        if (!result.error) break
        console.log(
          `[auto-continue] failed to send "${CONTINUE_TEXT}" to ${sessionID}, retrying: ${errorText(result.error as SessionError)}`,
        )
      }
      console.log(`[auto-continue] sent "${CONTINUE_TEXT}" to ${sessionID}`)
      void toast(`sent "${CONTINUE_TEXT}" to ${sessionID}`)
    } finally {
      pending.delete(sessionID)
    }
  }

  // Idle-вотчер: главная сессия в простое ≥2 минут И никакой активности
  // нигде ≥2 минут (сабагенты закончили) ⇒ "Continue" без задержки.
  const idleWatcher: any = setInterval(() => {
    const now = Date.now()
    if (now - lastWorkAt < IDLE_TIMEOUT_MS) return
    if (stopRequested()) return
    for (const [sessionID, since] of idleSince) {
      if (now - since < IDLE_TIMEOUT_MS) continue
      if (pending.has(sessionID)) continue
      idleSince.delete(sessionID) // перевзведётся следующим session.idle
      void scheduleContinue(
        sessionID,
        `idle ${Math.round(IDLE_TIMEOUT_MS / 60_000)}m, work never ends`,
        0,
      )
    }
  }, IDLE_POLL_MS)
  idleWatcher.unref?.()

  return {
    event: async ({ event }) => {
      const props: any = (event as any).properties ?? {}
      switch (event.type) {
        case "session.error": {
          const { sessionID, error } = props
          if (!sessionID) return
          markActivity(sessionID)
          if (error && SKIP_ERRORS.has(error.name)) return
          // Не await: ожидание в 10s не должно блокировать шину событий.
          void scheduleContinue(
            sessionID,
            `upstream error: ${errorText(error)}`,
            RETRY_DELAY_MS,
          )
          return
        }
        case "session.idle": {
          const sessionID: string | undefined = props.sessionID
          if (!sessionID) return
          // Завершение сабагента — не активность и не повод для таймера;
          // взводим таймер только для главных сессий.
          void classify(sessionID).then((isMain) => {
            // Всегда переустанавливаем метку времени (не только при
            // первом взведении) — безопасно теперь, когда markActivity
            // больше не удаляет запись из-под ног.
            if (isMain) idleSince.set(sessionID, Date.now())
          })
          return
        }
        case "session.updated": {
          // Дармовая классификация: событие несёт полный объект сессии.
          const info = props.info
          if (info?.id) isMainCache.set(info.id, !info.parentID)
          return
        }
        case "message.updated": {
          markActivity(props.info?.sessionID)
          return
        }
        case "message.part.updated": {
          markActivity(props.part?.sessionID)
          return
        }
      }
    },
  }
}
