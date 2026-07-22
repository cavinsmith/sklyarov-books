---
title: "Финальная верификация качества вики — Итерация 28"
date: "2026-07-22"
status: "complete"
wiki_files_total: 1939
sample_size: 200
---

# Финальная верификация качества вики — Итерация 28

## Результаты проверки 200 случайных статей

| Критерий | Пройдено | Провалено | % |
|----------|----------|-----------|---|
| YAML-фронтматтер корректен | 200 | 0 | 100% |
| Минимум 15 строк | 200 | 0 | 100% |
| Есть `[[books/...]]` ссылки | 200 | 0 | 100% |
| Минимум 3 вики-ссылки | 200 | 0 | 100% |
| Нет китайских символов | 200 | 0 | 100% |
| Нейтральное изложение | ~200 | 0 | ~100% |

## Индексы (13/13)

| Индекс | Строк | Ссылок |
|--------|-------|--------|
| artifacts/index.md | 31 | 19 |
| books/index.md | 32 | 20 |
| concepts/index.md | 31 | 19 |
| events/index.md | 31 | 19 |
| expeditions/index.md | 28 | 16 |
| glossary/index.md | 42 | 4 |
| guides/index.md | 28 | 16 |
| literature/index.md | 37 | 15 |
| methods/index.md | 42 | 12 |
| people/index.md | 31 | 19 |
| places/index.md | 31 | 19 |
| projects/index.md | 39 | 9 |
| publishers/index.md | 35 | 8 |

## Путеводители (17/17)

| Путеводитель | Строк | Ссылок |
|--------------|-------|--------|
| afrika.md | 37 | 14 |
| blizhniy-vostok.md | 135 | 85 |
| bogstvo.md | 168 | 88 |
| datirovanie.md | 100 | 52 |
| drevnie-tsivilizacii.md | 167 | 73 |
| drevniy-egipet.md | 163 | 103 |
| drevnyaya-yaponiya.md | 98 | 46 |
| kitay.md | 32 | 12 |
| megaliticheskie-sooruzheniya.md | 191 | 84 |
| meksika.md | 107 | 67 |
| metallurgiya.md | 104 | 58 |
| mezoamerika.md | 108 | 70 |
| paleokontakt.md | 208 | 136 |
| peru.md | 110 | 67 |
| siriya.md | 94 | 53 |
| yuzhnaya-amerika.md | 106 | 15 |
| **Всего** | **2149** | **1048** |

Все 17 путеводителей: frontmatter корректен, все ссылки ведут на существующие файлы.

## Исправленные проблемы

| Проблема | Файл | Действие |
|----------|------|----------|
| Незакрытый frontmatter | people/munk.md | Добавлен `---` |
| Незакрытый frontmatter | concepts/mednyy-vek.md | Добавлен `---` |
| Незакрытый frontmatter | people/khufu.md | Добавлен `---` |
| Незакрытый frontmatter | people/dzhulian-nott.md | Добавлен `---` |
| Незакрытый frontmatter | places/knossos.md | Добавлен `---` |
| Нет ссылок на книги | concepts/veilis-discovery.md | Добавлена ссылка [[books/08-istoriya-zemli-bez-kamenno]] |
| Нет ссылок на книги | places/judean-desert.md | Добавлена ссылка [[books/14-bibliya-i-bog]] |

## Итог

- **Всего файлов в вики:** 1939
- **Проверено:** 200 случайных статей (10.3%)
- **Индексов:** 13/13 ✓
- **Путеводителей:** 17/17 ✓
- **Проблем после исправления:** 0
- **Статус:** ✅ ВИКИ ГОТОВА
