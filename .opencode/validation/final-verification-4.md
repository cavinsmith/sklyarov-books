# Финальная верификация качества вики — Отчёт #4

**Дата:** 2026-07-21
**Общая статистика:** 1 861 файл .md, 14 разделов, 200 случайных статей проверены

---

## 1. Результаты проверки 200 случайных статей

| Критерий | Результат | Оценка |
|---|---|---|
| YAML-фронтматтер (`---`) | 100% (1 861/1 861) | ✅ |
| Поле `title:` в фронтматтере | 99% (1 859/1 861) | ✅ |
| Поле `description:` в фронтматтере | **5% (106/1 861)** | ❌ КРИТИЧНО |
| Минимум 15 строк | **96% (1 779/1 861)** | ✅ |
| Ссылки на книги `[[books/...]]` | 87% (1 625/1 861) | ✅ |
| Вики-ссылки ≥ 2 шт. | 92% (1 719/1 861) | ✅ |
| Нет китайских символов | **99.5% (1 852/1 861)** | ⚠️ |
| Нейтральное изложение | 100% (0 нарушений) | ✅ |

### Ключевые проблемы

**1. Отсутствие `description:` в 94% статей (1 753 файла)**
Это системная проблема. Формат фронтматтера:
```yaml
---
slug: nazva
title: "Название"
categories: [razdel]
tags: []
---
```
Отсутствует обязательное поле `description`, необходимое для SEO и навигации.

**2. Китайские символы в 9 файлах:**
| Файл | Проблема |
|---|---|
| `wiki/places/red-sea.md` | `苏伊士ский` вместо `Суэцкий` |
| `wiki/places/thailand.md` | `东南亚` в тексте |
| `wiki/people/vernon-barashenkov.md` | `的可能性` в тексте |
| `wiki/people/shevchuk.md` | `化学` в тексте |
| `wiki/people/kolba.md` | `专业知识` в тексте |
| `wiki/people/peter-brown.md` | `许多`, `相对` в тексте |
| `wiki/people/levy-bruhl.md` | `参与` в тексте |
| `wiki/people/kramer.md` | `众多` в тексте |
| `wiki/concepts/antenna-piramid.md` | `觀察ках` в тексте |

**3. 82 файла с < 15 строк** (см. полный список ниже) — в основном заглушки.

---

## 2. Полная статистика по разделам

| Раздел | Файлов | С описанием | Без описания |
|---|---|---|---|
| concepts | 500 | ~5 | **495** |
| places | 529 | ~10 | **519** |
| people | 502 | ~15 | **487** |
| artifacts | 166 | ~3 | **163** |
| events | 68 | ~2 | **66** |
| expeditions | 16 | 0 | **16** |
| guides | 15 | 0 | **15** |
| books | 46 | ~30 | **16** |
| projects | 4 | ~2 | **2** |
| methods | 6 | 0 | **6** |
| literature | 3 | 0 | **3** |
| glossary | 2 | 0 | **2** |
| publishers | 2 | 0 | **2** |

---

## 3. Проверка индексов

### `wiki/books/index-books.md` — ❌ ЗАГЛУШКА
```markdown
Заглушка. Страница в процессе создания.
```
При этом в разделе books **44 уникальных книги** (с учётом дубликатов — 44 файла). Индекс не содержит ни одной ссылки.

### `wiki/concepts/index-concepts.md` — ✅ ПОЛНЫЙ
546 записей в индексе.

---

## 4. Проверка путеводителей (guides)

**15 файлов** в `wiki/guides/`:

| Файл | Ссылок | Описание | Проблемы |
|---|---|---|---|
| README.md | 15 | ❌ нет | Broken link: `books/` |
| blizhniy-vostok.md | 84 | ❌ нет | — |
| bogstvo.md | 0 | ❌ нет | Пустой (11 строк) |
| datirovanie.md | 52 | ❌ нет | — |
| drevnie-tsivilizacii.md | 0 | ❌ нет | Пустой (11 строк) |
| drevniy-egipet.md | 103 | ❌ нет | — |
| drevnyaya-yaponiya.md | 41 | ❌ нет | — |
| megaliticheskie-sooruzheniya.md | 0 | ❌ нет | Пустой (11 строк) |
| meksika.md | 67 | ❌ нет | — |
| metallurgiya.md | 58 | ❌ нет | — |
| mezoamerika.md | 70 | ❌ нет | — |
| paleokontakt.md | 136 | ❌ нет | — |
| peru.md | 68 | ❌ нет | — |
| siriya.md | 53 | ❌ нет | — |
| yuzhnaya-amerika.md | 0 | ❌ нет | Пустой (11 строк) |

**Ни один путеводитель не имеет поля `description`.** 4 путеводителя — пустые заглушки.

---

## 5. Проверка README.md

**14 файлов README.md** — все имеют фронтматтер и title, **ни один не имеет description**.

| Файл | Broken links |
|---|---|
| wiki/README.md | — |
| wiki/artifacts/README.md | — |
| wiki/books/README.md | — |
| wiki/concepts/README.md | `books/` |
| wiki/events/README.md | `books/` |
| wiki/expeditions/README.md | `books/`, `guides/` |
| wiki/glossary/README.md | `books/`, `guides/` |
| wiki/guides/README.md | `books/` |
| wiki/literature/README.md | — |
| wiki/methods/README.md | `books/`, `expeditions/` |
| wiki/people/README.md | — |
| wiki/places/README.md | — |
| wiki/projects/README.md | `expeditions/`, `books/` |
| wiki/publishers/README.md | `books/` |

**10 из 14 README.md содержат битые ссылки** (ссылки на несуществующие страницы).

---

## 6. Сломанные ссылки (полный скан)

**44 сломанных ссылки** на **22 уникальных цели**:

| Цель | Кол-во ссылок | Пример источника |
|---|---|---|
| `books/` (папка, не файл) | 6 | wiki/methods/README.md |
| `...` (заглушка) | 14 | wiki/README.md |
| `anachronizmy` | 2 | wiki/concepts/ancient-metallurgy.md |
| `dead-sea` | 2 | wiki/concepts/sodom-i-gomorra.md |
| `kusco` | 2 | wiki/people/inca.md |
| `olyantaytambo` | 1 | wiki/people/inca.md |
| `masud-ivafun` | 1 | wiki/people/yuliya-gorlova.md |
| `-places/mexico` (опечатка) | 1 | wiki/people/manuel-gamio.md |
| `israel` | 1 | wiki/people/hashemitely.md |
| `palestina` | 1 | wiki/people/hashemitely.md |
| `blizhniy-vostok` | 1 | wiki/people/hashemitely.md |
| `linei-naska` | 1 | wiki/people/mejson.md |
| `drevnyaya-metallurgiya` | 1 | wiki/concepts/anachronizmy.md |
| `australian-boomerangs` | 1 | wiki/concepts/anachronizmy.md |
| `geoglyphs` | 1 | wiki/concepts/plato-naska.md |
| `pyramids` | 1 | wiki/concepts/archaeoastronomy.md |
| `tiauanako` | 1 | wiki/concepts/archaeoastronomy.md |
| `drevneegiptskie-boomerangi` | 1 | wiki/concepts/drevneegiptskaya-religiya.md |
| `mertvoe-more` | 1 | — |
| `kusco` | 2 | — |

---

## 7. Дубликаты файлов (латиница/кириллица)

**Обнаружено 52 конфликта** дубликатов. Примеры критических:

### Книги (смешанная латиница/кириллица в именах файлов):
| Латиница | Кириллица в имени |
|---|---|
| `01-mif-o-potope.md` | `01-mif-o-pотопе.md` |
| `04-bitva-za-urozhay.md` | `04-bitva-za-uroжay.md` |
| `05-rodina-bogov.md` | `05-rodina-bогов.md` |
| `16-sensacionnaya-istoriya.md` | `16-sensacionnaya-istorия.md` |
| `21-geneticheskiy-kod.md` | `21-geneticheskiy-kод.md` |
| `24-opasnoe-nasledie.md` | `24-opasnoe-nasledие.md` |
| `25-kovcheg-zaveta.md` | `25-kovcheg-zavета.md` |
| `29-sprint-po-kairu.md` | `29-sprint-po-kairу.md` |
| `30-yahve-protiv-baala.md` | `30-yahve-protiv-bаала.md`, `30-yahve-против-baала.md` |
| `12-tsivilizaciya-bogov-egipta.md` | `12-tsivilizaciya-bogov-egiptа.md` |
| `27-sozdanie-tsivilizaciy.md` | `27-sozdanie-tsivilizаций.md` |

### Категории (один и тот же контент в разных разделах):
- `arkaim.md` в artifacts/ и places/
- `sfinks.md` в artifacts/ и places/
- `pyramids.md` в places/ и concepts/
- `megaliticheskie-sooruzheniya.md` в guides/ и concepts/
- `inca.md` в people/ и concepts/

---

## 8. Файлы с < 15 строк (82 файла)

Критические (6 строк — минимальные заглушки):
- 7 файлов places с расширением `\.md` в имени (baalbek, tiwanaku, naska, aleppo, teotihuacan, palenque, cholula, ollantaytambo)
- 6 файлов books (дубликаты с кириллицей в имени)

10-строчные заглушки: 21 файл (concepts, events, expeditions)
11-строчные заглушки: 48 файлов (все разделы)

---

## 9. Итоговая оценка

| Категория | Статус |
|---|---|
| YAML-фронтматтер | ✅ OK |
| Структура заголовков | ✅ OK |
| Связность (вики-ссылки) | ✅ OK (92%) |
| Ссылки на книги | ✅ OK (87%) |
| Нейтральность | ✅ OK |
| Поле `description` | ❌ **94% статей не имеют** |
| Китайские символы | ⚠️ **9 файлов** |
| Битые ссылки | ⚠️ **44 ссылки на 22 цели** |
| Дубликаты файлов | ❌ **52 конфликта** |
| Индекс книг | ❌ **Заглушка** |
| README.md | ⚠️ **10/14 с битыми ссылками** |
| Путеводители | ⚠️ **4 из 15 — пустые** |
| Стубы (< 15 строк) | ⚠️ **82 файла (4.4%)** |

---

## 10. Рекомендации по исправлению (приоритет)

### P0 — Критично
1. **Добавить `description:`** во все 1 753 статьи (автоматически, из первого абзаца)
2. **Удалить дубликаты** с кириллицей в именах файлов (оставить латиницу)
3. **Заполнить `wiki/books/index-books.md`** — индекс всех 30 книг

### P1 — Важно
4. **Исправить китайские символы** в 9 файлах (заменить на русский текст)
5. **Исправить 44 сломанных ссылки** (привести к стандарту `places/...`, `concepts/...`)
6. **Исправить битые ссылки в 10 README.md** (убрать ссылки на папки `books/`)

### P2 — Рекомендуется
7. **Дописать 4 пустых путеводителя** (bogstvo, drevnie-tsivilizacii, megaliticheskie-sooruzheniya, yuzhnaya-amerika)
8. **Расширить 82 стуба** до минимум 15 строк
9. **Убрать конфликты имён** между разделами (arkaim, sfinks, pyramids и др.)

---

*Отчёт сформирован автоматически. Случайная выборка 200 файлов из 1 861, полный скан структуры.*
