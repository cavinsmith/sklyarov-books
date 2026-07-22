# Финальная проверка качества — 200 случайных статей

**Дата:** 2026-07-22
**Выборка:** 200 случайных из 1939 .md-файлов wiki/ (seed=42)
**Всего статей в wiki:** 1925 (без README.md)

---

## Общая сводка

| Метрика | Значение |
|---------|----------|
| Проверено | 200 |
| Прошли все проверки | **168 (84.0%)** |
| Не прошли | **32 (16.0%)** |
| Ошибок чтения | 0 |

---

## Сводка по проверкам

| Проверка | Пройдено | Провалено | % успеха |
|----------|----------|-----------|----------|
| YAML-frontmatter | 196 | 4 | 98.0% |
| Китайские символы | 200 | 0 | **100%** |
| Вики-ссылки | 181 | 19 | 90.5% |
| Нейтральность | 195 | 5 | 97.5% |
| Ссылки на книги | 195 | 5 | 97.5% |
| Длина (≥500 символов) | 197 | 3 | 98.5% |

---

## Распределение по категориям (все 1925 статей)

| Категория | Кол-во |
|-----------|--------|
| places | 549 |
| concepts | 541 |
| people | 509 |
| artifacts | 167 |
| events | 71 |
| books | 36 |
| expeditions | 17 |
| guides | 17 |
| methods | 6 |
| projects | 4 |
| literature | 3 |
| glossary | 2 |
| publishers | 2 |

---

## Выявленные проблемы

### 1. YAML-frontmatter — 4 провала (в выборке), ~43 во всей wiki

**Суть:** Отсутствует закрывающий `---` после фронтматтера.

**Затронутые статьи (выборка):**
- `wiki/places/bahamas.md`
- `wiki/places/uraljskij-razlom.md`
- `wiki/concepts/bosfor.md`
- `wiki/concepts/teorija-proskalzyvanija.md`

**Масштаб проблемы:** Всего в wiki обнаружено **43 статьи** с отсутствующим закрывающим `---`. Пример паттерна:
```
---
slug: bahamas
title: Багамы
...
description: "Описание"

# Багамы          ← нет --- перед контентом
```

**Рекомендация:** Массовый фикс — вставить `---` после description во всех 43 файлах.

---

### 2. Битые вики-ссылки — 19 провалов (в выборке)

**Суть:** Ссылки `[[...]]` ведут на несуществующие статьи.

**Рекуррирующие битые slug-и:**

| Slug | Кол-во раз в выборке |
|------|---------------------|
| `concepts/ancient-civilizations` | 10 |
| `concepts/megalithic-structures` | 8 |
| `concepts/anomalous-phenomena` | 2 |
| `places/cairo` | 1 |
| `places/canada` | 1 |

**Все 5 slug-ов не найдены как .md-файлы в wiki.** Это либо статьи, которые ещё не созданы, либо slug-и с другим написанием.

**Затронутые статьи (выборка):**
- `wiki/places/napata.md` → `concepts/ancient-civilizations`
- `wiki/concepts/central-asia.md` → `concepts/ancient-civilizations`
- `wiki/concepts/zodiakalnaya-simvolika.md` → `concepts/megalithic-structures`
- `wiki/artifacts/cairo-museum.md` → `places/cairo`
- `wiki/people/eskov.md` → `concepts/anomalous-phenomena`
- `wiki/places/verkhnee-ozero.md` → `places/canada`
- `wiki/concepts/mezoamerikanskaya-tsivilizaciya.md` → `concepts/ancient-civilizations`
- `wiki/people/stoks.md` → `concepts/ancient-civilizations`
- `wiki/places/europe.md` → `concepts/ancient-civilizations`
- `wiki/places/ura-uranga.md` → `concepts/ancient-civilizations`
- `wiki/people/agurto-kalvo.md` → `concepts/ancient-civilizations`
- `wiki/events/srednevekove.md` → `concepts/ancient-civilizations`
- `wiki/places/gobekli-tepe.md` → `concepts/megalithic-structures`
- `wiki/concepts/tsivilizatsiya-bogov.md` → `concepts/megalithic-structures`
- `wiki/books/24-opasnoe-nasledie.md` → `concepts/megalithic-structures`
- `wiki/concepts/anasazi.md` → `concepts/ancient-civilizations`
- `wiki/concepts/bogi-vysokorazvitaya-civilizaciya.md` → `concepts/megalithic-structures`
- `wiki/places/paris.md` → `concepts/ancient-civilizations`
- `wiki/concepts/piramidy-kak-istochniki-energii.md` → `concepts/megalithic-structures`

**Рекомендация:** Создать отсутствующие статьи `ancient-civilizations`, `megalithic-structures`, `anomalous-phenomena`, `cairo`, `canada` или исправить ссылки.

---

### 3. Нейтральность — 5 провалов

**Суть:** Обнаружены эмоционально-окрашенные / оценочные слова.

| Статья | Проблемное слово |
|--------|-----------------|
| `wiki/places/linei-naska.md` | «величайш» |
| `wiki/concepts/izotopy-ugleroda.md` | «абсолютн» |
| `wiki/people/richard-leakey.md` | «лжив» |
| `wiki/people/postnikov-aa.md` | «абсолютн» |
| `wiki/books/14-obitaemyy-ostrov.md` | «абсолютн» |

**Рекомендация:** Заменить на нейтральные формулировки. «Абсолютно» → «полностью/целиком», «величайший» → «один из крупнейших», «лжив» → «неверный/ошибочный».

---

### 4. Ссылки на книги — 5 провалов

**Суть:** В статье нет ни `[[books/...]]`, ни слова «книг».

| Статья |
|--------|
| `wiki/places/europe.md` |
| `wiki/expeditions/kamchatka.md` |
| `wiki/concepts/ural-spirals.md` |
| `wiki/concepts/teorija-proskalzyvanija.md` |
| `wiki/places/rodnaya-planeta-bogov.md` |

**Рекомендация:** Добавить источник в виде `[[books/...]]` или хотя бы упоминание книги/автора.

---

### 5. Длина — 3 провала (< 500 символов)

| Статья | Длина |
|--------|-------|
| `wiki/concepts/manejon.md` | 419 символов |
| `wiki/concepts/ural-spirals.md` | 408 символов |
| `wiki/places/rodnaya-planeta-bogov.md` | ~450 символов |

**Общая статистика:** 24 статьи в wiki < 500 символов (из 1925). Минимум: 352 символа (`wiki/people/inca.md`). Медиана: 1435 символов.

**Рекомендация:** Дописать недостающие статьи или пометить как заглушки.

---

### 6. Китайские символы — 0 провалов ✓

Все 200 проверенных статей свободны от китайских иероглифов.

---

## Приоритеты исправления

1. **Высокий:** Вставить закрывающий `---` в 43 статьях (ломает парсинг YAML)
2. **Высокий:** Создать 5 отсутствующих статей-заглушек (`ancient-civilizations`, `megalithic-structures`, `anomalous-phenomena`, `cairo`, `canada`) — это исправит 19 битых ссылок
3. **Средний:** Заменить эмоциональные слова в 5 статьях
4. **Низкий:** Дописать 3 короткие статьи, добавить ссылки на книги в 5 статей
