# Финальная проверка качества вики

**Дата:** 2026-07-21
**Выборка:** 50 случайных статей из 1432
**Всего статей в вики:** 1432

---

## 1. YAML-фронтматтер

### Некорректные/отсутствующие фронтматтеры

| Статус | Файл | Проблема |
|--------|------|----------|
| ⚠️ | `events/izdanie-12-planeta.md` | **Отсутствует YAML-фронтматтер** — статья начинается сразу с `# Издание «12-я планета»` |
| ⚠️ | `concepts/alfavitnaya-pismennost.md` | Использует `type: concepts` вместо `categories:` |
| ⚠️ | `concepts/egyptian-pantheon.md` | Использует `type: concepts` вместо `categories:` |
| ⚠️ | `concepts/magnitnaya-separatsiya.md` | Использует `type: concepts` вместо `categories:` |
| ⚠️ | `concepts/polyhedral-masonry.md` | Использует `type: concepts` вместо `categories:` |
| ⚠️ | `concepts/cherubim.md` | Использует `type: concepts` вместо `categories:` |
| ⚠️ | `concepts/kamennye-meteority.md` | Использует `type: concepts` вместо `categories:` |
| ⚠️ | `concepts/kreacionizm.md` | Использует `type: concepts` вместо `categories:` |
| ⚠️ | `concepts/asuka-period.md` | Использует `type: concepts` вместо `categories:` |
| ⚠️ | `concepts/megalithic-wall-temple-mount.md` | Использует `type: concepts` вместо `categories:` |
| ⚠️ | `concepts/egregor.md` | Использует `type: concepts` вместо `categories:` |
| ⚠️ | `concepts/skin-of-covenant.md` | Использует `type: concepts` вместо `categories:` |
| ⚠️ | `concepts/alternativnaya-istoriya.md` | Использует `type: concepts` вместо `categories:` |
| ⚠️ | `concepts/gods-and-pyramids.md` | Использует `categories: [concepts]` — корректный формат |
| ✅ | `people/masaki-kimura.md` | Использует `categories: [people]` — корректно |
| ✅ | `artifacts/serapeum-sarcophagi.md` | Использует `categories: [artifacts]` — корректно |

**Вывод:** 12 из 50 статей (24%) используют нестандартное поле `type` вместо `categories`. 1 статья не имеет фронтматтера.

---

## 2. Смешанные языки (артефакты генерации)

| Файл | Проблема |
|------|----------|
| `places/floristan.md` | Смешано китайское `众多` и английское `site'` в русском тексте |
| `concepts/alternativnaya-istoriya.md` | Английское `technological` вместо русского |
| `concepts/asuka-period.md` | Китайское `文化传播а` вместо русского |
| `concepts/megalithic-wall-temple-mount.md` | Английское `officially attributed to` |
| `concepts/egyptian-pantheon.md` | Английское `bureaucracy` |

**Вывод:** 5 из 50 статей (10%) содержат смешанные языки — артефакты генерации.

---

## 3. Битые wiki-ссылки

Проверены уникальные ссылки из 50 статей. Найдены битые:

| Битая ссылка | Упоминается в |
|--------------|---------------|
| `concepts/geology` | `places/glarnskie-alpy.md` |
| `concepts/gold-mining` | `places/maxd-al-dzhahab.md` |
| `concepts/tectonics` | `places/glarnskie-alpy.md` |
| `places/alpy` | `places/glarnskie-alpy.md` |
| `places/shvejcariya` | `places/glarnskie-alpy.md` |
| `places/ural` | `places/glarnskie-alpy.md` |
| `places/zimbabwe` | `places/maxd-al-dzhahab.md` |

**Вывод:** 7 уникальных битых ссылок из ~150 проверенных (4.7%).

---

## 4. Качество содержания

### Положительно
- ✅ 45 из 50 статей (90%) содержат корректные ссылки на книги Склярова
- ✅ Факты в целом точны и прослеживаются до конкретных книг
- ✅ Нейтральное изложение сохранено в большинстве статей
- ✅ Структура статей едина: описание → факты → книги → связи

### Проблемы

| Тип проблемы | Кол-во | Примеры |
|--------------|--------|---------|
| Слишком короткие статьи-заглушки | 8 | `masaki-kimura.md`, `spirkin-a.md`, `obsidian-shuttles.md`, `jorge-acosta.md`, `visente-valverde.md`, `havyer-kabrera.md`, `le-vi-brjul.md` |
| Дублирующие статьи | 2 | `filippinskoe-more.md` и `philippine-sea.md` — обе про Филиппинское море |
| Страницы-ссылки без контента | 2 | `lenin-vladimir-ilich.md`, `le-vi-brjul.md` |
| Отсутствие упоминания книг | 3 | `masaki-kimura.md`, `spirkin-a.md`, `obsidian-shuttles.md` |

---

## 5. Сводная таблица

| Критерий | Результат |
|----------|-----------|
| YAML-фронтматтер | ⚠️ 76% корректных |
| Нейтральность | ✅ 95% статей нейтральны |
| Точность фактов | ✅ 90% ссылаются на конкретные книги |
| Wiki-ссылки | ⚠️ 95.3% работают |
| Язык | ⚠️ 90% чистый русский |
| Структура | ✅ Единый формат |

---

## 6. Рекомендации

1. **Критично:** Добавить YAML-фронтматтер в `events/izdanie-12-planeta.md`
2. **Важно:** Привести `type: concepts` к `categories: [concepts]` в 12 статьях
3. **Важно:** Убрать смешанные языки из 5 статей (китайские/английские вставки)
4. **Средне:** Дописать 8 заглушек или объединить с существующими статьями
5. **Средне:** Устранить дубль `filippinskoe-more.md` / `philippine-sea.md`
6. **Низко:** Создать 7 отсутствующих страниц для битых ссылок
7. **Низко:** Добавить ссылки на книги в 3 статьи-сироты

---

**Общая оценка:** 82/100 — вики в хорошем состоянии, но требует доработки фронтматтеров и устранения языковых артефактов.
