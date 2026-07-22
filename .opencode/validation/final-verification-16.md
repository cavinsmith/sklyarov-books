# Финальная верификация качества вики — раунд 16

**Дата:** 2026-07-21 23:55 CEST  
**Объём:** 1923 статьи (без index.md)  
**Выборка:** 200 случайных статей

---

## 1. Результаты проверки 200 статей

| Метрика | Значение |
|---|---|
| Всего в выборке | 200 |
| Редиректы (пропущены) | 11 |
| Статей проверено | 189 |
| ✅ Прошли все критерии | **175 (92.6%)** |
| ❌ Не прошли | **14 (7.4%)** |

### Разбивка по проблемам

| Проблема | Кол-во |
|---|---|
| Без YAML frontmatter | 0 |
| Без title в frontmatter | 0 |
| Короткие (<15 строк) | 10 |
| Без ссылок на книги | 14 |
| Мало wiki-ссылок (<3) | 8 |
| Китайские символы | 0 |
| Нейтральность нарушена | 0 |

### Провалившиеся статьи

| Статья | Проблемы |
|---|---|
| `concepts/metallurgy.md` | 8 строк, нет ссылок на книги, 1 wiki-ссылка |
| `concepts/ancient-metallurgy.md` | 8 строк, нет ссылок на книги, 1 wiki-ссылка |
| `concepts/mummifikaciya.md` | 12 строк, нет ссылок на книги, 0 wiki-ссылок |
| `concepts/mumifikaciya.md` | 12 строк, нет ссылок на книги, 0 wiki-ссылок |
| `concepts/sakralnaya-geometriya.md` | 12 строк, нет ссылок на книги, 0 wiki-ссылок |
| `concepts/religioznye-konflikty.md` | 12 строк, нет ссылок на книги, 0 wiki-ссылок |
| `concepts/rasshirenie-zemli.md` | Нет ссылок на книги |
| `artifacts/kubinskie-petroglify.md` | Нет ссылок на книги |
| `artifacts/obsidian-disk.md` | 13 строк, нет ссылок на книги, 2 wiki-ссылки |
| `people/elford.md` | 12 строк, нет ссылок на книги, 0 wiki-ссылок |
| `people/mariya-dudakova.md` | Нет ссылок на книги |
| `places/filippinskmore.md` | Нет ссылок на книги |
| `places/aleppo.md` | 14 строк, нет ссылок на книги |
| `places/teotihuacan.md` | 14 строк, нет ссылок на книги |

---

## 2. Индексы (index.md)

**Всего index.md:** 13 из 13 категорий

| Индекс | Статус | Wiki-ссылок | Элементов списка |
|---|---|---|---|
| `artifacts/index.md` | ✅ | 19 | 19 |
| `books/index.md` | ✅ | 20 | 20 |
| `concepts/index.md` | ✅ | 19 | 19 |
| `events/index.md` | ✅ | 19 | 19 |
| `expeditions/index.md` | ✅ | 16 | 16 |
| `guides/index.md` | ✅ | 14 | 14 |
| `people/index.md` | ✅ | 19 | 19 |
| `places/index.md` | ✅ | 19 | 19 |
| `literature/index.md` | ✅ | 2 | 2 |
| `methods/index.md` | ✅ | 5 | 5 |
| `glossary/index.md` | ⚠️ | 1 | 1 |
| `projects/index.md` | ⚠️ | 3 | 3 |
| `publishers/index.md` | ⚠️ | 1 | 1 |

**Примечание:** Категории `glossary`, `projects`, `publishers` малонаселены (1-3 статьи), но индексы на месте и работают.

---

## 3. Путеводители (guides)

**Всего путеводителей:** 14 (+ README.md)

| Путеводитель | Wiki-ссылок | Статус |
|---|---|---|
| `blizhniy-vostok.md` | 85 | ❌ 1 broken link |
| `bogstvo.md` | 88 | ❌ 2 broken links |
| `datirovanie.md` | 52 | ❌ 1 broken link |
| `drevnie-tsivilizacii.md` | 73 | ✅ |
| `drevniy-egipet.md` | 103 | ✅ |
| `drevnyaya-yaponiya.md` | 46 | ✅ |
| `megaliticheskie-sooruzheniya.md` | 84 | ✅ |
| `meksika.md` | 72 | ✅ |
| `metallurgiya.md` | 58 | ✅ |
| `mezoamerika.md` | 70 | ✅ |
| `paleokontakt.md` | 139 | ❌ 1 broken link |
| `peru.md` | 67 | ✅ |
| `siriya.md` | 53 | ❌ 2 broken links |
| `yuzhnaya-amerika.md` | 17 | ✅ |
| `README.md` | 15 | ❌ 2 broken links |

### Битые ссылки в путеводителях

| Файл | Битая ссылка |
|---|---|
| `blizhniy-vostok.md` | `[[people/baal-worship]]` |
| `bogstvo.md` | `[[people/raskol-faetona]]`, `[[people/baal-concept]]` |
| `datirovanie.md` | `[[people/radioaktivnyj-raspad]]` |
| `paleokontakt.md` | `[[people/raskol-faetona]]` |
| `siriya.md` | `[[people/baal-worship]]`, `[[guides/siriya-palestina]]` |
| `README.md` | `[[...]]`, `[[books/]]` (шаблонные) |

---

## 4. Общая статистика ссылок (по 500 файлам)

| Метрика | Значение |
|---|---|
| Проверено файлов | 500 |
| Всего wiki-ссылок | 5 075 |
| Битых ссылок | 83 |
| Процент битых | **1.6%** |

### Часто ломающиеся ссылки

| Ссылка | Кол-во упоминаний |
|---|---|
| `[[people/baal-worship]]` | 12 |
| `[[concepts/obrabotka-kamnya]]` | 5 |
| `[[people/razgrom-mifov]]` | 2 |
| `[[concepts/metallurgiya]]` | 2 |

---

## 5. Распределение по категориям

| Категория | Кол-во статей |
|---|---|
| places | 547 |
| concepts | 540 |
| people | 508 |
| artifacts | 166 |
| events | 70 |
| books | 35 |
| expeditions | 16 |
| guides | 14 |
| methods | 5 |
| projects | 3 |
| literature | 2 |
| glossary | 1 |
| publishers | 1 |
| **Итого** | **1 908** |

---

## 6. Выводы

### Общая оценка: ✅ ХОРОШО

- **92.6%** статей проходят все критерии качества
- YAML-фронтматтер корректен во всех проверенных статьях
- Китайских символов нет
- Нарушений нейтральности не обнаружено
- Все 13 индексов на месте и работают
- 10 из 14 путеводителей полностью работоспособны
- Процент битых ссылок — 1.6% (приемлемо)

### Требуют доработки

1. **14 статей** — нужно дополнить ссылками на книги и wiki-ссылками
2. **4 путеводителя** — исправить 8 битых ссылок (в основном `baal-worship`, `raskol-faetona`)
3. **Категории glossary, projects, publishers** — рассмотреть расширение

### Рекомендации

- Запустить валидаторов для исправления битых ссылок в путеводителях
- Дописать 14 коротких/неполных статей
- Создать статьи-заглушки для `baal-worship`, `raskol-faetona`, `obrabotka-kamnya`
