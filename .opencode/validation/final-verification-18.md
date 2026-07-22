# Финальная верификация качества вики — Раунд 18

**Дата:** 2026-07-22
**Проверено статей:** 200 случайных из 1894

---

## 1. Сводка метрик

| Критерий | Результат | Процент |
|----------|-----------|---------|
| YAML-фронтматтер корректен | 198/200 | 99.0% |
| Минимум 15 строк | 191/200 | 95.5% |
| Есть ссылки на книги `[[books/...]]` | 184/200 | 92.0% |
| Есть вики-ссылки (мин. 3 уникальных) | 191/200 | 95.5% |
| Нет китайских символов | 200/200 | 100% |
| Нейтральное изложение | 176/200 | 88.0% |

**Общая оценка: 42 файла с проблемами из 200 (21%)**

---

## 2. Проблемные файлы (42 шт.)

### 2.1 Сломанный YAML-фронтматтер (2)

| Файл | Проблема |
|------|----------|
| `concepts/dracoonografiya.md` | Невалидный YAML, нет фронтматтера |
| `places/la-venta.md` | Невалидный YAML, нет фронтматтера |

### 2.2 Слишком короткие статьи — < 15 строк (9)

| Файл | Строк |
|------|-------|
| `places/megaliticheskie-sooruzheniya.md` | 8 |
| `places/baalbek-trilithon.md` | 8 |
| `places/teotiuakan.md` | 8 |
| `artifacts/zhizn-posle-smerti.md` | 8 |
| `concepts/megaliticheskie-sooruzheniya.md` | 8 |
| `concepts/nefritovaya-trubka.md` | 8 |
| `concepts/posokh-moiseya.md` | 8 |
| `concepts/sodom-i-gomorra.md` | 8 |
| `concepts/trepanaciya-cherepov.md` | 8 |

### 2.3 Нет ссылок на книги (16)

| Файл |
|------|
| `artifacts/obsidian-disk.md` |
| `artifacts/zhizn-posle-smerti.md` |
| `concepts/megaliticheskie-sooruzheniya.md` |
| `concepts/metallurgy.md` |
| `concepts/nefritovaya-trubka.md` |
| `concepts/posokh-moiseya.md` |
| `concepts/sodom-i-gomorra.md` |
| `concepts/theory-of-evolution.md` |
| `concepts/trepanaciya-cherepov.md` |
| `concepts/voyny-drevnosti.md` |
| `places/aleppo\.md` |
| `places/baalbek-trilithon.md` |
| `places/filippinskmore.md` |
| `places/megaliticheskie-sooruzheniya.md` |
| `places/teotihuacan\.md` |
| `places/teotiuakan.md` |

### 2.4 Мало вики-ссылок — < 3 уникальных (9)

| Файл |
|------|
| `artifacts/zhizn-posle-smerti.md` |
| `concepts/megaliticheskie-sooruzheniya.md` |
| `concepts/nefritovaya-trubka.md` |
| `concepts/posokh-moiseya.md` |
| `concepts/sodom-i-gomorra.md` |
| `concepts/trepanaciya-cherepov.md` |
| `places/baalbek-trilithon.md` |
| `places/megaliticheskie-sooruzheniya.md` |
| `places/teotiuakan.md` |

### 2.5 Проблемы нейтральности (24)

**Только «точно» (20):**
`artifacts/bolty.md`, `artifacts/karta-zolotyh-rudnikov.md`, `artifacts/serapeum-sarcophagi.md`, `books/21-geneticheskiy-kod.md`, `books/24-opasnoe-nasledie.md`, `books/26-siriyskie-perekrestki.md`, `concepts/high-tech-mesoamerica.md`, `concepts/maya.md`, `concepts/myshyakovistaya-bronza.md`, `concepts/trappy.md`, `concepts/vysokie-tehnologii.md`, `events/ekspediciya-sklyarova-v-egipet-2004.md`, `people/aharonot.md`, `places/canaan.md`, `places/fivy.md`, `places/kestel.md`, `places/levant.md`, `places/lukssor.md`, `places/tell-el-amarna.md`, `places/temple-mount.md`

**«Точно» + другие (4):**
- `artifacts/megalithic-wall-temple-mount.md` — «точно», «определённо»
- `books/13-meksika-bez-krivyh-zerkal.md` — «точно», «определённо», «абсолютно»
- `concepts/izotopy-ugleroda.md` — «абсолютно»
- `people/levchenko-v.md` — «точно», «абсолютно»

---

## 3. Индексы (13/13 — ✅)

| Индекс | Статус |
|--------|--------|
| `artifacts/index.md` | ✅ |
| `books/index.md` | ✅ |
| `concepts/index.md` | ✅ |
| `events/index.md` | ✅ |
| `expeditions/index.md` | ✅ |
| `glossary/index.md` | ✅ |
| `guides/index.md` | ✅ |
| `literature/index.md` | ✅ |
| `methods/index.md` | ✅ |
| `people/index.md` | ✅ |
| `places/index.md` | ✅ |
| `projects/index.md` | ✅ |
| `publishers/index.md` | ✅ |

---

## 4. Путеводители (16 статей + README + index = 18 файлов — ✅)

| Путеводитель | Строк | Фронтматтер | Wiki-ссылки | Книжные ссылки |
|-------------|-------|-------------|-------------|----------------|
| `afrika.md` | 27 | ✅ | ✅ | ❌ |
| `blizhniy-vostok.md` | 135 | ✅ | ✅ | ✅ |
| `bogstvo.md` | 168 | ✅ | ✅ | ✅ |
| `datirovanie.md` | 101 | ✅ | ✅ | ✅ |
| `drevnie-tsivilizacii.md` | 167 | ✅ | ✅ | ✅ |
| `drevniy-egipet.md` | 163 | ✅ | ✅ | ✅ |
| `drevnyaya-yaponiya.md` | 99 | ✅ | ✅ | ✅ |
| `kitay.md` | 26 | ✅ | ✅ | ✅ |
| `megaliticheskie-sooruzheniya.md` | 191 | ✅ | ✅ | ✅ |
| `meksika.md` | 113 | ✅ | ✅ | ✅ |
| `metallurgiya.md` | 104 | ✅ | ✅ | ✅ |
| `mezoamerika.md` | 108 | ✅ | ✅ | ✅ |
| `paleokontakt.md` | 208 | ✅ | ✅ | ✅ |
| `peru.md` | 110 | ✅ | ✅ | ✅ |
| `siriya.md` | 94 | ✅ | ✅ | ✅ |
| `yuzhnaya-amerika.md` | 107 | ✅ | ✅ | ✅ |

**Замечание:** `afrika.md` не содержит ссылок на книги — единственная проблема среди путеводителей.

---

## 5. README.md (14/14 — ✅)

| README | Строк | Фронтматтер | Содержимое |
|--------|-------|-------------|------------|
| `README.md` | 147 | ✅ | ✅ |
| `artifacts/README.md` | 68 | ✅ | ✅ |
| `books/README.md` | 80 | ✅ | ✅ |
| `concepts/README.md` | 69 | ✅ | ✅ |
| `events/README.md` | 64 | ✅ | ✅ |
| `expeditions/README.md` | 63 | ✅ | ✅ |
| `glossary/README.md` | 53 | ✅ | ✅ |
| `guides/README.md` | 53 | ✅ | ✅ |
| `literature/README.md` | 41 | ✅ | ✅ |
| `methods/README.md` | 42 | ✅ | ✅ |
| `people/README.md` | 59 | ✅ | ✅ |
| `places/README.md` | 81 | ✅ | ✅ |
| `projects/README.md` | 53 | ✅ | ✅ |
| `publishers/README.md` | 46 | ✅ | ✅ |

---

## 6. Выводы

- **Китайские символы:** Полностью отсутствуют ✅
- **Индексы:** Все 13 на месте ✅
- **Путеводители:** Все 16 рабочих ✅ (1 замечание по `afrika.md`)
- **README.md:** Все 14 рабочих ✅
- **Критические проблемы:** 2 файла с сломанным YAML — требуют исправления
- **Короткие статьи:** 9 файлов (< 15 строк) — нужно дополнить
- **Нейтральность:** 24 файла содержат слова-маркеры «точно»/«абсолютно»/«определённо» — рекомендуется замена на нейтральные формулировки

### Приоритет修复:
1. **P0** — Исправить YAML в `concepts/dracoonografiya.md` и `places/la-venta.md`
2. **P1** — Дописать 9 коротких статей (< 15 строк)
3. **P2** — Добавить книжные ссылки в 16 статей без `[[books/...]]`
4. **P3** — Заменить нейтральные слова в 24 файлах
