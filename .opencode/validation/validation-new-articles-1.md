# Валидация новых статей (21 Jul 2026)

Проверены статьи, созданные в коммитах `c34dcc3` и `92d8628` (125 файлов).

## 1. Битые [[ссылки]] — ИСПРАВЛЕНИЯ

### Исправлено автоматически (7 файлов, 14 ссылок)

| Файл | Было | Стало |
|------|------|-------|
| `people/millard.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `people/monboddo.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `people/pauling.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `people/huxley.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `people/derewyanko.md` | `books/21-geneticheskiy-kод` + `people/shun'kov` | `books/21-geneticheskiy-kod` + `people/shunkov` |
| `people/artur-poznanskij.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `people/ivan-guzman-de-rohas.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `people/pedro-syeza-de-leon.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `concepts/gennaya-inzheneriya.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `concepts/genographic.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `concepts/vishnu.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `concepts/mtdna.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `concepts/gibridizaciya.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `concepts/shumerskaya-klinopis.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `concepts/y-hromosoma.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `concepts/letatelnie-apparaty.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `concepts/vzryv.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `concepts/garmoniya.md` | `books/21-geneticheskiy-kод` | `books/21-geneticheskiy-kod` |
| `artifacts/denisova-phalanx.md` | `people/mihail-shunkov` | `people/shunkov` |
| `artifacts/denisova-phalanx.md` | `people/svante-paabo` | `people/paabo` |
| `places/denisova-cave.md` | `people/mihail-shunkov` | `people/shunkov` |
| `places/denisova-cave.md` | `people/svante-paabo` | `people/paabo` |

### Оставшиеся битые ссылки (16) — требуют создания новых файлов

| Битая ссылка | Где используется |
|-------------|-----------------|
| `people/anatoliy-derevyanko` | denisova-phalanx, denisova-cave |
| `people/denisovans` | denisova-phalanx, denisova-cave |
| `people/pierre-teyar-de-shardan` | sinanthropus-skull, zhukoudyan |
| `people/анри-брейль` | sinanthropus-skull, zhukoudyan |
| `artifacts/homo-floresiensis` | flores |
| `people/peter-brown` | flores |
| `people/robert-folk` | flores |
| `places/liang-bua` | flores |
| `artifacts/krovlatiy-disk` | gaiti |
| `places/dmanisi` | kavkaz |
| `people/visente-valverde` | korikancha |
| `places/rakchi` | korikancha |

## 2. Сиротские страницы (115 из 125)

Большинство новых статей ни на кем не ссылается. Нужно добавить входящие ссылки из релевантных статей.

## 3. Несоответствие формата

### 75 статей-заглушек (<300 байт)
Содержат только заголовок + 1-2 предложения + ссылку на книгу. Необходимо дополнить:
- Мета-информация жирным шрифтом
- Раздел `## Описание`
- Раздел `## Ключевые факты`
- Развеянные ссылки в `## См. также`

### Непоследовательность фронтматтера
- 24 статьи с YAML-фронтматтером (`---`)
- 91 статья без фронтматтера (только `# Заголовок`)

## 4. Ошибки фронтматтера

Отсутствуют обязательные поля в части статей с фронтматтером. Рекомендуется привести к единому формату.
