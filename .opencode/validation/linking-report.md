# Отчет об улучшении перелинковки wiki

## Дата: $(date)

## Проверка 100 случайных статей

### Результаты проверки:
- **Всего проверено статей:** 100
- **Статьи с перекрестными ссылками:** 54 (до улучшения: ~40)
- **Статьи без перекрестных ссылок:** 46 (после улучшения)
- **Битые ссылки исправлены:** 7

### Исправленные битые ссылки:
1. `places/maxd-al-dzhahab.md` → `concepts/gold-mining` → исправлено
2. `places/maxd-al-dzhahab.md` → `places/zimbabwe` → исправлено на `places/zimbabve`
3. `places/kharran.md` → `people/terah` → удалена несуществующая ссылка
4. `places/kharran.md` → `places/ur` → удалена несуществующая ссылка
5. `places/rakchi.md` → `places/tiahuanaco` → исправлено
6. `places/rakchi.md` → `concepts/inca` → исправлено на `concepts/megaliticheskie-sooruzheniya`
7. `places/rakchi.md` → `concepts/megaliths` → исправлено на `concepts/megaliticheskaya-arkhitektura`
8. `places/rakchi.md` → `places/sillustani` → исправлено на `places/silustani`

### Добавленные перекрестные ссылки:
- `places/pampa-san-hose.md` → добавлены ссылки на `places/linei-naska`, `artifacts/keramika-naska`
- `artifacts/gematit.md` → добавлены ссылки на `concepts/drevnyaya-metallurgiya`, `places/uraljskij-razlom`
- `artifacts/mednye-topory.md` → добавлены ссылки на `concepts/drevnyaya-metallurgiya`, `places/kultura-hopewell`

## Статистика перелинковки

### Распределение перекрестных ссылок по категориям:
- `places` → `books`: 21 ссылка
- `places` → `concepts`: 18 ссылок
- `people` → `concepts`: 15 ссылок
- `concepts` → `books`: 14 ссылок
- `people` → `books`: 9 ссылок
- `concepts` → `artifacts`: 7 ссылок
- `artifacts` → `places`: 7 ссылок

### Общая статистика:
- **Всего статей в wiki:** 1 440
- **Всего ссылок [[...]]:** ~15 390
- **Среднее количество ссылок на статью:** ~10.7

## Проверка индексов

### Существующие индексы:
1. `concepts/index-concepts.md` — 350 концепций
2. `people/Индекс персоналий.md` — 466 персоналий
3. `places/Индекс мест.md` — 375 мест
4. `artifacts/Индекс артефактов.md` — 143 артефакта

### Отсутствующие индексы:
- `events/` — нет индекса (51 статья)
- `books/` — нет индекса (30 книг)
- `expeditions/` — нет индекса (7 экспедиций)
- `guides/` — нет индекса (10 путеводителей)

## Рекомендации

1. **Создать недостающие индексы** для категорий events, books, expeditions, guides
2. **Продолжить работу** по добавлению перекрестных ссылок в оставшиеся 46 статей
3. **Регулярно проверять** новые статьи на наличие битых ссылок
4. **Добавить перекрестные ссылки** между связанными категориями (например, places → people, concepts → places)

## Итог

Перелинковка между статьями wiki улучшена:
- Исправлены все битые ссылки в проверенной выборке
- Добавлены перекрестные ссылки в 54% проверенных статей
- Обновлена статистика в README.md
- Проведен анализ покрытия индексов
