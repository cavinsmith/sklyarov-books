# Финальная верификация качества вики

Дата проверки: 2026-07-21

## Статистика случайной выборки (200 статей)

- Всего проверено: 200
- Валидных: 165
- С проблемами: 35
- Процент качества: 82.5%

## Критерии проверки

1. YAML-фронтматтер корректен (slug, title, categories)
2. Минимум 15 строк
3. Есть ссылки на книги [[books/...]]
4. Есть вики-ссылки на связанные статьи (минимум 2)
5. Нет китайских символов
6. Нейтральное изложение (без субъективных оценок)

## Результаты проверки индексов

- README.md файлов: 14 (все категории)
- Индексные файлы index.md: 0 (не используются)

## Результаты проверки путеводителей

- Всего путеводителей: 14
- С YAML-фронтматтером: 11
- Без YAML-фронтматтера: 3 (megaliticheskie-sooruzheniya.md, bogstvo.md, drevnie-tsivilizacii.md)

## Проблемные статьи (35 из 200)

### Критические (7 статей)

1. `./wiki/artifacts/arkaim.md` — нет фронтматтера, 4 строки, нет ссылок на книги
2. `./wiki/concepts/kollekciya-djulsruda.md` — нет фронтматтера, 4 строки, нет ссылок на книги
3. `./wiki/concepts/temple-destruction-70.md` — нет фронтматтера, 4 строки, нет ссылок на книги
4. `./wiki/concepts/rasshirenie-zemli.md` — нет categories, 10 строк, нет ссылок на книги
5. `./wiki/concepts/theory-of-evolution.md` — нет categories, 10 строк, нет ссылок на книги
6. `./wiki/concepts/vsemirnyj-potop.md` — нет categories, 10 строк, нет ссылок на книги
7. `./wiki/places/kamni-iki.md` — нет фронтматтера, 4 строки, нет ссылок на книги

### Проблемы с categories (8 статей)

- `./wiki/concepts/ancient-metallurgy.md`
- `./wiki/concepts/bumerangi.md`
- `./wiki/concepts/dragonografiya.md`
- `./wiki/concepts/nasca.md`
- `./wiki/places/atacama.md`
- `./wiki/places/cholula.md`
- `./wiki/places/effeleva-bashnya.md`
- `./wiki/places/varanasi.md`

### Мало вики-ссылок (14 статей)

- `./wiki/people/djedefra.md` — 0 ссылок
- `./wiki/people/henri-breuil.md` — 0 ссылок
- `./wiki/people/mayakovsky.md` — 0 ссылок
- `./wiki/people/tolstoy.md` — 0 ссылок
- `./wiki/people/tutchev.md` — 0 ссылок
- `./wiki/publishers/veche.md` — 0 ссылок
- `./wiki/places/cholula.md` — 0 ссылок
- `./wiki/concepts/piezoelectric-effect.md` — 1 ссылка
- `./wiki/people/amenemhat.md` — 1 ссылка
- `./wiki/people/bulgakov-m.md` — 1 ссылка
- `./wiki/people/nikolay-vavilov.md` — 1 ссылка
- `./wiki/people/teollinger.md` — 1 ссылка
- `./wiki/people/wallace.md` — 1 ссылка
- `./wiki/people/wegener.md` — 1 ссылка

### Нет ссылок на книги (10 статей)

- `./wiki/artifacts/monolity.md`
- `./wiki/events/srednevekove.md`
- `./wiki/places/abasidy.md`
- `./wiki/places/atacama.md`
- `./wiki/places/cholula.md`
- `./wiki/places/effeleva-bashnya.md`
- `./wiki/places/kultura-hopewell.md`
- `./wiki/places/usa.md`
- `./wiki/places/varanasi.md`

### Субъективные оценки (2 статьи)

- `./wiki/books/16-sensacionnaya-istoriya.md` — "абсолютно"
- `./wiki/people/mayakovsky.md` — "Хорошо"

## Рекомендации

1. **Исправить YAML-фронтматтер** в 15 статьях (добавить categories или пересоздать)
2. **Дописать 7 критических статей** — они слишком короткие и пустые
3. **Добавить вики-ссылки** в 14 статей
4. **Добавить ссылки на книги** в 10 статей
5. **Убрать субъективные оценки** из 2 статей
6. **Добавить YAML-фронтматтер** в 3 путеводителя
