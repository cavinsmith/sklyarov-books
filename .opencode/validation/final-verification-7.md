# Финальная верификация качества вики — Отчёт №7

**Дата:** 2026-07-21
**Проверено статей:** 200 случайных из 1840 (10.9%)

## Сводка

| Параметр | Значение |
|----------|----------|
| Всего .md файлов в вики | 1 840 |
| Проверено случайных | 200 |
| Прошли все проверки | 128 (64.0%) |
| Не прошли | 72 (36.0%) |

## Проблемы по категориям

| Проблема | Кол-во | % от 200 |
|----------|--------|----------|
| Ошибка парсинга YAML | 17 | 8.5% |
| Слишком мало вики-ссылок (<3) | 44 | 22.0% |
| Нет ссылок на книги | 20 | 10.0% |
| Слишком короткая статья (<15 строк) | 11 | 5.5% |
| Нет YAML-фронтматтера | 9 | 4.5% |
| Нет поля categories | 10 | 5.0% |
| Китайские символы | 1 | 0.5% |
| Нейтральное изложение нарушено | 0 | 0% |

## Глобальная статистика по вики

| Проверка | Результат |
|----------|-----------|
| YAML ошибки парсинга (всего) | 167 файлов |
| Статьи без categories (всего) | 62 файла |

## Проверка индексов

| Индекс | Статус | Строк | Ссылок |
|--------|--------|-------|--------|
| concepts/index-concepts.md | OK | 494 | 400 |
| people/indeks-personaliy.md | OK | 538 | 499 |
| places/indeks-mest.md | OK | 590 | 513 |
| artifacts/indeks-artefaktov.md | OK | 228 | 168 |
| events/khronologiya.md | OK | 142 | 95 |

**Все 5 индексов полные и работоспособные.**

## Проверка README.md

Все 14 README.md проверены — все имеют YAML-фронтматтер:

| README | Строк |
|--------|-------|
| wiki/README.md | 147 |
| artifacts/README.md | 63 |
| methods/README.md | 42 |
| literature/README.md | 41 |
| places/README.md | 75 |
| projects/README.md | 53 |
| books/README.md | 80 |
| expeditions/README.md | 63 |
| guides/README.md | 53 |
| people/README.md | 59 |
| concepts/README.md | 69 |
| glossary/README.md | 53 |
| publishers/README.md | 46 |
| events/README.md | 64 |

## Проверка путеводителей

| Путеводитель | Статус | Строк | Ссылок | Книг |
|-------------|--------|-------|--------|------|
| blizhniy-vostok.md | OK | 135 | 85 | 5 |
| bogstvo.md | **FAIL** | 3 | 1 | 0 |
| datirovanie.md | OK | 101 | 52 | 5 |
| drevnie-tsivilizacii.md | **FAIL** | 3 | 1 | 0 |
| drevniy-egipet.md | OK | 163 | 103 | 5 |
| drevnyaya-yaponiya.md | OK | 99 | 46 | 5 |
| megaliticheskie-sooruzheniya.md | **FAIL** | 3 | 1 | 0 |
| meksika.md | OK | 107 | 67 | 6 |
| metallurgiya.md | OK | 104 | 58 | 5 |
| mezoamerika.md | OK | 108 | 70 | 6 |
| paleokontakt.md | OK | 208 | 136 | 11 |
| peru.md | OK | 110 | 67 | 5 |
| siriya.md | OK | 94 | 53 | 4 |
| yuzhnaya-amerika.md | OK | 100 | 12 | 2 |

**12 из 15 путеводителей в порядке. 3 — заглушки по 3 строки.**

## Детальный разбор проблемных статей (из 200)

### Статьи без YAML-фронтматтера (заглушки)
- `places/akambaro.md` — 3 строки, только редирект
- `places/feysal.md` — 3 строки, только редирект
- `places/padenie-ierihona.md` — 3 строки, только редирект
- `places/indus-valley.md` — 3 строки, только редирект
- `places/poyas-asteroidov.md` — 3 строки, только редирект
- `expeditions/yuzhnaya-amerika.md` — 3 строки, только редирект
- `guides/bogstvo.md` — 3 строки, только редирект
- `places/kompyuter-drevnego-kitaya.md` — 7 строк, только редирект
- `concepts/nefritovaya-trubka.md` — 3 строки, только редирект

### YAML ошибки парсинга (17 шт.)
Причина: `tags:` и `description:` перепутаны местами — элементы списка `tags` идут после `description`.
- `artifacts/kamennaya-forma.md`
- `artifacts/kovcheg-zaveta.md`
- `places/gory-titikaka.md`
- `places/anau.md`
- `places/labrea.md`
- `places/sipan.md`
- `artifacts/zolotye-maski-miken.md`
- `places/yapon.md`
- `places/baffinova-zemlya.md`
- `places/tollan.md`
- `places/akhet-aton.md`
- `artifacts/sosudy-zakruglennym-dnom.md`
- `artifacts/azurit.md`
- `places/hatshepsut-temple.md`
- `places/shinbab.md`
- `places/ain-dara.md`
- `places/aksum.md` — нет categories

### Китайские символы (1 шт.)
- `events/battle-for-harvest.md:18` — строка `Рассматривается в контексте早期 цивилизаций` (смешан китайский и русский)

### Слишком мало вики-ссылок (<3) — 44 статьи
Основная причина: короткие или специализированные статьи, где контекст ограничен. Примеры:
- `people/mayakovsky.md` — 0 ссылок
- `people/pushkin.md` — 0 ссылок
- `concepts/amon.md` — 2 ссылки
- `people/cherneih-evgenij.md` — 1 ссылка
- `people/theophilus.md` — 1 ссылка

### Нет ссылок на книги — 20 статей
Примеры:
- `artifacts/kamni.md`
- `concepts/rasshirenie-zemli.md`
- `concepts/metallurgiya-drevnosti.md`
- `places/florida.md`
- `places/uran.md`
- `artifacts/rongorongo.md`
- `people/mariya-dudakova.md`

## Критические исправления (приоритет)

### 1. YAML ошибки — 167 файлов
Фикс: поменять местами `tags` и `description` во всех файлах.
Пример неправильного порядка:
```yaml
tags:
description: "..."
  - item
```
Должно быть:
```yaml
description: "..."
tags:
  - item
```

### 2. Заглушки без контента — 9 файлов (в выборке ~83 глобально)
Статьи по 3 строки с единственной ссылкой. Нужно либо удалить, либо расширить.

### 3. Китайские символы — 1 файл
`events/battle-for-harvest.md:18` — исправить `контексте早期` → `контексте ранних`.

### 4. Категории отсутствуют — 62 файла
Статьи без `categories` в YAML-фронтматтере.

## Общая оценка

| Критерий | Оценка |
|----------|--------|
| Индексы | Отлично (5/5 полные) |
| README.md | Отлично (14/14 в порядке) |
| Путеводители | Хорошо (12/15 рабочие, 3 заглушки) |
| YAML-фронтматтер | Удовлетворительно (167 ошибок парсинга) |
| Связность (вики-ссылки) | Удовлетворительно (22% статей <3 ссылок) |
| Ссылки на книги | Удовлетворительно (10% без ссылок) |
| Длина статей | Хорошо (5.5% короче 15 строк) |
| Нейтральность | Отлично (0 нарушений) |
| Отсутствие китайских символов | Хорошо (1 инцидент из 200) |

**Вердикт:** Вики требует исправления YAML-парсинга (167 файлов) и заполнения заглушек. Остальные показатели в пределах нормы.
