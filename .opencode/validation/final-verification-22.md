# Финальная верификация качества вики

**Дата:** 2026-07-22
**Объём вики:** 1 909 статей (не считая README.md и index*.md)

---

## 1. Выборка для проверки качества

Случайная выборка **200 статей** (seed=42) из 1 909 возможных.

### Результаты по критериям

| Критерий | Ошибок (в выборке 200) | Ошибок (во всей вики) |
|---|---|---|
| YAML-фронтматтер | **0** | — |
| Минимум 15 строк | **13** | **68** |
| Ссылки на книги [[books/...]] | **19** | **124** |
| Вики-ссылки (>= 3) | **13** | **68** |
| Китайские символы | **2** | **8** |
| Нейтральность (восклицания) | **0** | — |

**Итого в выборке:** 178/200 прошли (89%), 22 не прошли (11%).

### Китайские символы — полный список (8 файлов)

| Файл | Кол-во символов |
|---|---|
| concepts/megalithic-wall-temple-mount.md | 12 |
| concepts/plato-naska.md | 5 |
| concepts/bogstvo.md | 4 |
| concepts/canaanites.md | 3 |
| artifacts/obsidianovaya-obezyana.md | 8 |
| places/ural-spirals.md | 4 |
| places/zimbabve.md | 4 |
| places/japan.md | 7 |

### Файлы с проблемами в выборке (22)

| Файл | Проблемы |
|---|---|
| artifacts/red-pyramid.md | Мало строк (9); Нет ссылок на книги; Нет вики-ссылок |
| artifacts/zhizn-posle-smerti.md | Мало строк (9); Нет ссылок на книги; Нет вики-ссылок |
| artifacts/zolotoj-zhel.md | Мало строк (13); Мало вики-ссылок (1) |
| concepts/astronomiya-drevnosti.md | Нет ссылок на книги |
| concepts/bogstvo.md | Китайские символы (4) |
| concepts/inventory-stela.md | Мало строк (9); Нет ссылок на книги; Нет вики-ссылок |
| concepts/kamni-i-skalnye-figury.md | Нет ссылок на книги |
| concepts/magnitnye-polyusa.md | Нет ссылок на книги |
| concepts/materializm-empiriokriticizm.md | Мало строк (9); Нет ссылок на книги; Нет вики-ссылок |
| concepts/metallurgy.md | Нет ссылок на книги |
| concepts/plato-naska.md | Китайские символы (5) |
| concepts/religioznye-ucheniya.md | Нет ссылок на книги |
| expeditions/rossiya.md | Мало строк (9); Нет ссылок на книги; Нет вики-ссылок |
| people/alexandr-skyarov.md | Нет ссылок на книги |
| people/inca.md | Мало строк (9); Нет ссылок на книги; Нет вики-ссылок |
| places/baalbek-trilithon.md | Мало строк (9); Нет ссылок на книги; Нет вики-ссылок |
| places/djon-dey.md | Мало строк (9); Нет ссылок на книги; Нет вики-ссылок |
| places/indus-valley.md | Мало строк (9); Нет ссылок на книги; Нет вики-ссылок |
| places/iran.md | Нет ссылок на книги |
| places/maya.md | Мало строк (9); Нет ссылок на книги; Нет вики-ссылок |
| places/pyramids.md | Мало строк (9); Нет ссылок на книги; Нет вики-ссылок |
| places/teotiuakan.md | Мало строк (9); Нет ссылок на книги; Нет вики-ссылок |

---

## 2. Индексы

**Найдено:** 15 индекс-файлов (ожидание: 13 базовых секций + 2 дополнительных).

| Индекс | Строк | Ссылок |
|---|---|---|
| artifacts/index.md | 32 | 19 |
| books/index.md | 33 | 20 |
| books/index-books.md | 82 | 38 |
| concepts/index.md | 32 | 19 |
| concepts/index-concepts.md | 495 | 400 |
| events/index.md | 32 | 19 |
| expeditions/index.md | 29 | 16 |
| glossary/index.md | 43 | 4 |
| guides/index.md | 29 | 16 |
| literature/index.md | 38 | 15 |
| methods/index.md | 43 | 12 |
| people/index.md | 32 | 19 |
| places/index.md | 32 | 19 |
| projects/index.md | 40 | 9 |
| publishers/index.md | 36 | 8 |

**Статус:** Все 13 базовых секций имеют index.md. Два дополнительных (books/index-books.md, concepts/index-concepts.md) — расширенные индексы.

---

## 3. Путеводители

**Найдено:** 16 путеводителей (ожидание: 18).

| Путеводитель | Строк | Ссылок на книги | Вики-ссылок |
|---|---|---|---|
| guides/afrika.md | 28 | 0 | 7 |
| guides/blizhniy-vostok.md | 136 | 5 | 85 |
| guides/bogstvo.md | 169 | 10 | 88 |
| guides/datirovanie.md | 102 | 5 | 52 |
| guides/drevnie-tsivilizacii.md | 168 | 9 | 73 |
| guides/drevniy-egipet.md | 164 | 5 | 103 |
| guides/drevnyaya-yaponiya.md | 100 | 5 | 46 |
| guides/kitay.md | 27 | 1 | 6 |
| guides/megaliticheskie-sooruzheniya.md | 192 | 11 | 84 |
| guides/meksika.md | 113 | 9 | 72 |
| guides/metallurgiya.md | 105 | 5 | 58 |
| guides/mezoamerika.md | 109 | 6 | 70 |
| guides/paleokontakt.md | 209 | 11 | 139 |
| guides/peru.md | 111 | 5 | 67 |
| guides/siriya.md | 95 | 4 | 53 |
| guides/yuzhnaya-amerika.md | 108 | 5 | 17 |

**Статус:** 16 из 18 — не хватает 2 путеводителей.

---

## 4. Дополнительные находки

### Файлы-дубликаты (идентичное содержимое)

| Дубликат | Оригинал |
|---|---|
| people/inca.md | places/inca.md |
| concepts/megaliticheskie-sooruzheniya.md | places/megaliticheskie-sooruzheniya.md |

### Файлы с экранированными точками в именах (8 шт)

Это файлы-редиректы с slug `name\`, что является артефактом:

- `places/palmyra\.md`
- `places/naska\.md`
- `places/teotihuacan\.md`
- `places/aleppo\.md`
- `places/palenque\.md`
- `places/cholula\.md`
- `places/ollantaytambo\.md`
- `places/tiwanaku\.md`

### Разбивка по секциям

| Секция | Статей |
|---|---|
| artifacts | 166 |
| books | 34 |
| concepts | 539 |
| events | 70 |
| expeditions | 16 |
| glossary | 1 |
| guides | 16 |
| literature | 2 |
| methods | 5 |
| people | 508 |
| places | 547 |
| projects | 3 |
| publishers | 1 |
| **ИТОГО** | **1 909** |

---

## 5. Итоговая оценка

| Показатель | Значение | Статус |
|---|---|---|
| YAML-фронтматтер | 100% | OK |
| Минимум 15 строк | 96.4% (1 841/1 909) | WARN |
| Ссылки на книги | 93.5% (1 785/1 909) | WARN |
| Вики-ссылки >= 3 | 96.4% (1 841/1 909) | WARN |
| Китайские символы | 99.6% чистых (1 901/1 909) | OK |
| Нейтральность | 100% | OK |
| Индексы (13 секций) | 13/13 | OK |
| Путеводители | 16/18 | WARN |

### Критические проблемы
- **0** критических ошибок

### Предупреждения
- 8 файлов с китайскими символами (нужно удалить)
- 68 статей короче 15 строк (нужно дополнить)
- 124 статьи без ссылок на книги (нужно добавить контекст)
- 8 файлов-редиректов с артефактами в именах
- 2 файла-дубликата
- 2 путеводителя отсутствуют (ожидание: 18, найдено: 16)
