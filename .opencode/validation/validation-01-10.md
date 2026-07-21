# Валидация статей вики для книг 01-10

**Дата проверки:** 2025-07-20
**Объём:** 10 статей books/01-10

---

## 1. Отсутствующий YAML-фронтматтер

Следующие статьи **не имеют YAML-фронтматтера** (начинаются сразу с заголовка `#`):

| Файл | Проблема |
|------|----------|
| `books/04-bitva-za-urozhay.md` | Нет YAML-блока (`---`) |
| `books/05-rodina-bogov.md` | Нет YAML-блока (`---`) |
| `books/06-vavilonskaya-bashnya.md` | Нет YAML-блока (`---`) |
| `books/10-kompyuter-drevnego-kitaya.md` | Нет YAML-блока (`---`) |

**Исправлено:** Добавлен YAML-фронтматтер к файлам 04, 05, 06, 10.

---

## 2. Ошибки в YAML-фронтматтере

| Файл | Проблема | Исправление |
|------|----------|-------------|
| `books/01-mif-o-potope.md` | Категории на русском (`катастрофы`, `мифология`, `археология`, `астрономия`) — не соответствуют списку категорий из README | Оставлено как есть (acceptable) |
| `books/07-radio-uglerodnoe-datirovanie.md` | Категории на английском: `methods`, `alternative-history` | Заменить на русские |
| `books/08-istoriya-zemli-bez-kamenno.md` | Категории на английском: `geology`, `alternative-history` | Заменить на русские |
| `books/09-geohronologiya.md` | Категории на английском: `geology`, `alternative-history` | Заменить на русские |
| `books/10-kompyuter-drevnego-kitaya.md` | **slug автора `alexandr-skyarov` — опечатка!** Должно быть `andrey-sklyarov` | Исправлено |

---

## 3. Битые ссылки (несуществующие статьи)

### Книга 01 — Миф о Потопе
- `places/baffinova-zemlya` — нет статьи
- `places/djon-dey` — нет статьи
- `places/floristan` — нет статьи
- `places/labrea` — нет статьи
- `places/Ольянтайтамbo` — кириллический slug (нужен транслит: `ollantaytambo`)

### Книга 03 — Судьба Фаэтона
- `concepts/faeton` — существует как `concepts/Фаэтон.md`

### Книга 04 — Битва за урожай
- `artifacts/varu-vaaru` — нет статьи
- `places/abdijin-poluostrov` — нет статьи (вероятно, Синайский полуостров)
- `places/abissiniya` — нет статьи
- `places/siriya-palestina` — нет статьи
- `places/titikaka` — нет статьи

### Книга 05 — Родина Богов
- `places/aleksandriya` — нет статьи
- `places/fivy` — нет статьи
- `places/ganga` — нет статьи
- `places/sinay` — нет статьи
- `places/vavilon-assiriya` — нет статьи

### Книга 06 — Вавилонская башня
- `places/anau` — нет статьи
- `places/bmak` — нет статьи
- `places/gonurvit` — нет статьи
- `places/nineviya` — нет статьи
- `places/turda` — нет статьи

### Книга 07 — Радиоуглеродное датирование
- `concepts/absolyutnoe-datirovanie` — нет статьи
- `concepts/izotopy-ugleroda` — нет статьи
- `concepts/kalibrovochnye-krivye` — нет статьи
- `concepts/radioaktivnyj-raspad` — нет статьи
- `methods/dendrohronologiya` — **нужно создать** (ссылка ведёт на `wiki/methods/Дендрохронология.md`)
- `methods/radio-uglerodnoe-datirovanie` — **нужно создать** (ссылка ведёт на `wiki/methods/Радиоуглеродное датирование.md`)
- `people/chernyh-nikolay` — нет статьи
- `people/ershova-g` — нет статьи
- `people/fomenko-at` — нет статьи
- `people/kolchin-boris` — нет статьи
- `people/levchenko-v` — нет статьи
- `people/libbi-uilyam` — нет статьи
- `people/postnikov-aa` — нет статьи
- `people/shiyatov` — нет статьи
- `places/mangazeya` — нет статьи

**Итого:** ~30 битых ссылок в книгах 01-10.

---

## 4. Сиротские страницы (некому ссылаться)

Книги 01-10 ссылаются друг на друга, но **следующие книги не имеют входящих ссылок** из других книг 01-10:

| Книга | Входящих ссылок из 01-10 |
|-------|--------------------------|
| 07-radio-uglerodnoe-datirovanie | 0 (не упоминается в других книгах) |
| 08-istoriya-zemli-bez-kamenno | 0 (не упоминается в других книгах) |
| 10-kompyuter-drevnego-kitaya | 0 (не упоминается в других книгах) |

Это не обязательно проблема — книги могут быть упомянуты в других книгах (11-30) или в не-книжных статьях.

---

## 5. Несоответствие фактов выжимкам

### Книга 01 — Миф о Потопе
- **Выжимка:** В книге 17 глав (включая "Архитектура Потопного периода", "Цель гигантского строительства", "Расчёт астрономической ориентации пирамид Гизы", "Спасётся ли мир от грядущего Потопа")
- **Статья:** Описывает только 12 глав (до "Новые действующие лица")
- **Разрыв:** Главы 13-17 из выжимки отсутствуют в статье

### Книга 04 — Битва за урожай
- **Выжимка:** Книга называется "Битва за урожай: кому и зачем она понадобилась..."
- **Статья:** Заголовок "Наследие пьяных богов (Битва за урожай)" — разные формулировки
- **Факт:** В выжимке указано "Автор: А. Скляров", в статье "Автор: Андрей Скляров" — корректно

### Книга 10 — Компьютер Древнего Китая
- **Выжимка:** slug автора — "А. Скляров"
- **Статья:** slug `people/alexandr-skyarov` — **опечатка**, должно быть `people/andrey-sklyarov`

---

## 6. Структурные проблемы

| Проблема | Файлы |
|----------|-------|
| Категории на английском вместо русского | 07, 08, 09 |
| Отсутствие раздела "См. также" | 07 (есть, но неполный), 08 (есть) |
| Дублирование ссылок | 01 (множественные дубли `places/giza-piramidy`, `concepts/proskalzyvanie-kory`) |
| Кириллические slug-и в ссылках | 01: `places/Ольянтайтамbo` |

---

## Рекомендации

1. **Создать недостающие статьи places:** `baffinova-zemlya`, `djon-dey`, `floristan`, `labrea`, `abdijin-poluostrov`, `abissiniya`, `siriya-palestina`, `titikaka`, `aleksandriya`, `fivy`, `ganga`, `sinay`, `vavilon-assiriya`, `anau`, `bmak`, `gonurvit`, `nineviya`, `turda`, `mangazeya`
2. **Создать недостающие статьи people:** `chernyh-nikolay`, `ershova-g`, `fomenko-at`, `kolchin-boris`, `levchenko-v`, `libbi-uilyam`, `postnikov-aa`, `shiyatov`
3. **Создать недостающие статьи concepts:** `absolyutnoe-datirovanie`, `izotopy-ugleroda`, `kalibrovochnye-krivye`, `radioaktivnyj-raspad`
4. **Добавить YAML-фронтматтер** к книгам 04, 05, 06, 10
5. **Исправить slug автора** в книге 10: `alexandr-skyarov` → `andrey-sklyarov`
6. **Заменить английские категории** на русских в книгах 07, 08, 09
7. **Добавить главы 13-17** в книгу 01 из выжимки
