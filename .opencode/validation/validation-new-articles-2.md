# Валидация новых статей — 21.07.2026

## Обзор

Проверены новые статьи в `wiki/events/`, `wiki/methods/`, `wiki/expeditions/`, `wiki/guides/`, созданные для исправления битых ссылок.

---

## 1. Битые [[ссылки]]

| Файл | Строка | Битая ссылка | Исправление |
|------|--------|-------------|-------------|
| `guides/datirovanie.md` | 44 | `people/charls-layel` | `people/charlz-layel` |
| `guides/drevniy-egipet.md` | 23 | `places/ollantaytambo` (Плато Гизы) | `places/giza-plateau` |

**Исправлено.**

---

## 2. Сиротские страницы

**Не обнаружено.** Все новые статьи ссылаются из `README.md`, `glavnaya.md` и других guides.

---

## 3. Дублирующие статьи (удалены до проверки)

- `methods/dendrohronologiya.md` — дубль `dendrokhronologiya.md`
- `methods/radio-uglerodnoe-datirovanie.md` — дубль `radiouglerodnoe-datirovanie.md`
- `events/efiopskaya-ekspediciya-2008.md` — дубль `ekspediciya-efiopiya-2008.md`
- `events/levantiyskaya-ekspediciya-2009.md` — дубль `ekspediciya-lai-2009.md`

---

## 4. Тонкие заглушки (events/)

4 статьи с minimally viable content (11 строк):

- `events/klonirovanie-dolly.md`
- `events/nahodka-denisova.md`
- `events/nahodka-sinanthropus.md`
- `events/teoriya-preryvistogo-ravnovesiya.md`

**Рекомендация:** Расширить до формата `events/battle-kadesh.md` (описание, контекст, ключевые факты, см. также).

---

## 5. Ошибки кодировки (CJK-символы)

**Исправлено до проверки.** Все guides/ проверены — CJK-символы отсутствуют.

---

## 6. Формат

- Все guides/ имеют YAML-фронтматтер (slug, title, categories, tags)
- Все guides/ используют стандартный заголовок `# Путеводитель: <тема>`
- Events/, expeditions/, methods/ — без фронтматтера (как стандарт вики)

---

## Итого

| Проблема | Количество | Статус |
|----------|-----------|--------|
| Битые ссылки | 2 | Исправлено |
| Сироты | 0 | — |
| Дубли | 4 | Удалены |
| CJK-ошибки | 0 | Исправлено до проверки |
| Заглушки | 4 | Рекомендация к расширению |
