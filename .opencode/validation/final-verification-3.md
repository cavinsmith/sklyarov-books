# Финальная верификация качества вики — Отчёт №3

**Дата:** 2026-07-21
**Всего статей в вики:** 1 660
**Проверена случайная выборка:** 200 статей

---

## 1. Качество статей (выборка 200)

| Метрика | Результат |
|---------|-----------|
| Без проблем | **157 / 200 (78.5%)** |
| С проблемами | **43 / 200 (21.5%)** |

### Breakdown проблем

| Проблема | Количество | % от выборки |
|----------|------------|-------------|
| `FEW_WIKI_LINKS` — мало вики-ссылок (< 2) | 22 | 11.0% |
| `BROKEN_LINKS` — битые ссылки | 19 | 9.5% |
| `NO_BOOK_LINKS` — нет ссылок на книги | 4 | 2.0% |
| `NO_CATEGORY` — нет категории в frontmatter | 0 | 0% ✅ |
| `CHINESE_CHARS` — китайские символы | 0 (в выборке) | — |
| `BIAS` — не нейтральное изложение | 0 | 0% ✅ |
| `FEW_LINES` — менее 15 строк | 0 | 0% ✅ |
| `NO_FRONTMATTER` — нет YAML | 0 | 0% ✅ |

### Статьи с проблемами (выборка)

| Статья | Проблемы |
|--------|----------|
| `wiki/concepts/piezoelectric-effect.md` | FEW_WIKI_LINKS:1 |
| `wiki/places/sparta.md` | NO_BOOK_LINKS |
| `wiki/artifacts/krovlatiy-disk.md` | BROKEN_LINKS:1 |
| `wiki/places/mohenjo-daro.md` | FEW_WIKI_LINKS:1 |
| `wiki/concepts/moche.md` | BROKEN_LINKS:1 |
| `wiki/places/tartheriya.md` | FEW_WIKI_LINKS:1 |
| `wiki/concepts/pharaohs.md` | BROKEN_LINKS:1 |
| `wiki/places/amazon.md` | BROKEN_LINKS:2 |
| `wiki/people/byron-cummings.md` | BROKEN_LINKS:2 |
| `wiki/concepts/pottery.md` | BROKEN_LINKS:1 |
| `wiki/places/dzharmo.md` | FEW_WIKI_LINKS:1 |
| `wiki/events/arkaim-third-discovery.md` | FEW_WIKI_LINKS:1, BROKEN_LINKS:1 |
| `wiki/people/chouhachiro-izumi.md` | FEW_WIKI_LINKS:0 |
| `wiki/places/ura-uranga.md` | FEW_WIKI_LINKS:0 |
| `wiki/people/wegener.md` | FEW_WIKI_LINKS:1 |
| `wiki/concepts/astenosfer.md` | BROKEN_LINKS:5 |
| `wiki/places/mertvoe-more.md` | NO_BOOK_LINKS |
| `wiki/people/lomonosov.md` | FEW_WIKI_LINKS:1 |
| `wiki/places/armeniya.md` | BROKEN_LINKS:2 |
| `wiki/places/xian.md` | FEW_WIKI_LINKS:0 |
| `wiki/places/deir-el-medina.md` | FEW_WIKI_LINKS:1 |
| `wiki/people/bulgakov-m.md` | FEW_WIKI_LINKS:0 |
| `wiki/places/kamni-iki.md` | BROKEN_LINKS:1 |
| `wiki/concepts/biblia.md` | BROKEN_LINKS:1 |
| `wiki/concepts/planet-of-gods.md` | FEW_WIKI_LINKS:1 |
| `wiki/concepts/magnetic-separation.md` | FEW_WIKI_LINKS:1 |
| `wiki/artifacts/kuprit.md` | FEW_WIKI_LINKS:1 |
| `wiki/people/kolcev.md` | BROKEN_LINKS:1 |
| `wiki/concepts/trepanaciya-cherepov.md` | BROKEN_LINKS:3 |
| `wiki/people/masaki-kimura.md` | FEW_WIKI_LINKS:0 |
| `wiki/places/igil.md` | FEW_WIKI_LINKS:1 |
| `wiki/places/parizh.md` | FEW_WIKI_LINKS:0 |
| `wiki/places/knossos.md` | NO_BOOK_LINKS |
| `wiki/people/hashemitely.md` | NO_BOOK_LINKS, BROKEN_LINKS:3 |
| `wiki/concepts/holy-lands.md` | BROKEN_LINKS:1 |
| `wiki/places/nan-madol.md` | FEW_WIKI_LINKS:0 |
| `wiki/concepts/zodiacal-symbolism.md` | BROKEN_LINKS:1 |
| `wiki/people/frankl-viktor-emil.md` | FEW_WIKI_LINKS:0 |
| `wiki/people/maxim-yakovenko.md` | FEW_WIKI_LINKS:1 |
| `wiki/concepts/gold-mining.md` | BROKEN_LINKS:2 |
| `wiki/concepts/writing-systems.md` | BROKEN_LINKS:2 |
| `wiki/places/pamir.md` | FEW_WIKI_LINKS:1 |
| `wiki/concepts/copper-age.md` | BROKEN_LINKS:3 |

---

## 2. Китайские символы (полная проверка)

**Найдено 9 статей с китайскими символами:**

| Статья | Кол-во | Пример |
|--------|--------|--------|
| `wiki/places/red-sea.md` | 3 | 苏伊士 |
| `wiki/places/thailand.md` | 3 | 东南亚 |
| `wiki/people/vernon-barashenkov.md` | 4 | 的可能性 |
| `wiki/people/shevchuk.md` | 2 | 化学 |
| `wiki/people/kolba.md` | 4 | 专业知识 |
| `wiki/people/peter-brown.md` | 6 | 许多相对相对 |
| `wiki/people/levy-bruhl.md` | 2 | 参与 |
| `wiki/people/kramer.md` | 2 | 众多 |
| `wiki/concepts/antenna-piramid.md` | 2 | 觀察 |

---

## 3. Битые ссылки (полная проверка)

| Метрика | Значение |
|---------|----------|
| Статей с битыми ссылками | **170 / 1 660 (10.2%)** |
| Всего битых ссылок | **393** |
| Уникальных битых целей | **193** |

### Топ-10 самых частых битых ссылок

| Цель | Кол-во |
|------|--------|
| `concepts/bogi-vysokorazvitaya-civilizaciya` | **87** |
| `events/potop-xi-tysyacheletiya` | 19 |
| `...` (без корректного slug) | 14 |
| `concepts/teorija-proskalzyvanija` | 10 |
| `places/egypt` | 9 |
| `concepts/nazca-geoglify` | 8 |
| `places/jerusalem` | 7 |
| `concepts/rodina-bogov` | 6 |
| `places/filippinskmore` | 5 |
| `concepts/ancient-technologies` | 5 |

### Исправимые битые ссылки (кириллица в slug)

| Оригинал | Должно быть |
|----------|-------------|
| `books/12-tsivilizaciya-bogov-egiptа` | `books/12-tsivilizaciya-bogov-egipta` |
| `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `books/25-kovcheg-zavета` | `books/25-kovcheg-zaveta` |
| `books/30-yahve-protiv-baала` | `books/30-yahve-protiv-baala` |
| `concepts/astenosferа` | `concepts/astenosfera` |
| `concepts/poyas-asteroidов` | `concepts/poyas-asteroidov` |

---

## 4. Полнота индексов

| Индекс | Статей в каталоге | Ссылок в индексе | Пропущено | Статус |
|--------|-------------------|-------------------|-----------|--------|
| `concepts/index-concepts.md` | 443 | 443 | **0** | ✅ Полный |
| `people/indeks-personaliy.md` | 483 | 312 | **171** | ❌ Неполный |
| `places/indeks-mest.md` | 472 | 167 | **307** | ❌ Неполный |
| `artifacts/indeks-artefaktov.md` | 153 | 152 | **6** | ⚠️ Почти полный |
| `events/khronologiya.md` | 55 | 54 | **1** | ⚠️ Почти полный |
| `glossary/glossariy.md` | 2 | 1 | **1** | ⚠️ Почти полный |

### Примеры пропущенных персоналий (из 171)
`abraham`, `agurto-kalvo`, `aharonot`, `alexander-gumbold`, `alunni-antonella` ...

### Примеры пропущенных мест (из 307)
`abasidy`, `abdijin-poluostrov`, `abissiniya`, `africa`, `aibunar` ...

---

## 5. Путеводители — проверка целостности

| Путеводитель | Строк | Ссылок | Статус |
|-------------|-------|--------|--------|
| `blizhniy-vostok.md` | 132 | 84 | ✅ OK |
| `datirovanie.md` | 100 | 52 | ✅ OK |
| `drevniy-egipet.md` | 162 | 103 | ✅ OK |
| `drevnyaya-yaponiya.md` | 92 | 41 | ✅ OK |
| `meksika.md` | 104 | 67 | ✅ OK |
| `metallurgiya.md` | 103 | 58 | ✅ OK |
| `mezoamerika.md` | 107 | 70 | ✅ OK |
| `paleokontakt.md` | 191 | 136 | ✅ OK |
| `peru.md` | 108 | 68 | ✅ OK |
| `siriya.md` | 93 | 53 | ✅ OK |

**Все 10 путеводителей целы и содержат рабочие ссылки.**

---

## 6. README.md — проверка

| README.md | Ссылок | Битых | Статус |
|-----------|--------|-------|--------|
| `README.md` (корень) | 74 | 1 | ⚠️ |
| `artifacts/README.md` | 19 | 12 | ❌ |
| `methods/README.md` | 9 | 6 | ❌ |
| `literature/README.md` | 7 | 4 | ❌ |
| `places/README.md` | 27 | 13 | ❌ |
| `projects/README.md` | 8 | 3 | ⚠️ |
| `books/README.md` | 37 | 1 | ⚠️ |
| `expeditions/README.md` | 17 | 12 | ❌ |
| `guides/README.md` | 15 | 6 | ❌ |
| `people/README.md` | 18 | 9 | ❌ |
| `concepts/README.md` | 27 | 11 | ❌ |
| `glossary/README.md` | 6 | 3 | ❌ |
| `publishers/README.md` | 5 | 2 | ⚠️ |
| `events/README.md` | 19 | 13 | ❌ |

**Из 14 README.md — 10 содержат битые ссылки.**

---

## 7. Сводная оценка

| Категория | Оценка | Описание |
|-----------|--------|----------|
| YAML-фронтматтер | ✅ **Отлично** | Все 200 статей имеют корректный frontmatter с title и categories |
| Объём статей | ✅ **Отлично** | Все статьи ≥ 15 строк |
| Ссылки на книги | ⚠️ **Хорошо** | 4/200 без ссылок (2%) — допустимо для общих статей |
| Вики-ссылки | ⚠️ **Удовлетворительно** | 22/200 (11%) имеют < 2 вики-ссылок |
| Китайские символы | ❌ **Плохо** | 9 статей содержат китайские иероглифы |
| Нейтральность | ✅ **Отлично** | Найдено 0 случаев нарушения нейтральности |
| Битые ссылки | ❌ **Плохо** | 170 статей (10.2%), 393 битых ссылки, 193 уникальных |
| Индексы | ❌ **Плохо** | `people` — 171 пропуск, `places` — 307 пропусков |
| Путеводители | ✅ **Отлично** | Все 10 целы и рабочи |
| README.md | ❌ **Плохо** | 10 из 14 содержат битые ссылки |

---

## 8. Приоритетные действия

### Критические (必须)
1. **Исправить китайские символы** в 9 статьях — заменить на русские эквиваленты
2. **Создать недостающие страницы** для 193 уникальных битых ссылок (или исправить ссылки)
3. **Дополнить индекс персоналий** — 171 пропущенная статья
4. **Дополнить индекс мест** — 307 пропущенных статей

### Важные
5. **Исправить битые ссылки** в README.md файлах (83 битых ссылки)
6. **Исправить кириллицу в slug** ссылок (6 исправимых)
7. **Добавить больше вики-ссылок** в 22 статьи с FEW_WIKI_LINKS

### Желательные
8. **Добавить ссылки на книги** в 4 статьи без них
9. **Проверить и исправить** `concepts/bogi-vysokorazvitaya-civilizaciya` (87 битых ссылок)
10. **Проверить и исправить** `events/potop-xi-tysyacheletiya` (19 битых ссылок)
