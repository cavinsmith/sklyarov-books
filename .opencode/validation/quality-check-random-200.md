# Отчёт проверки качества 200 случайных статей wiki/

Дата проверки: 2026-07-21

## Сводка

| Критерий | Пройдено | Всего | Процент |
|----------|----------|-------|---------|
| YAML-фронтматтер | 115 | 200 | 57% |
| Минимум 10 строк | 182 | 200 | 91% |
| Ссылки на книги | 172 | 200 | 86% |
| Вики-ссылки | 171 | 200 | 85% |
| Нет китайского | 184 | 200 | 92% |
| Нейтральность | 200 | 200 | 100% |
| **Все критерии** | **91** | **200** | **45%** |

## Проблемные статьи (176)

- `wiki/people/nimrod.md`: YAML: Invalid YAML line: - people
- `wiki/concepts/metallurgy.md`: Китайские символы: 1
- `wiki/concepts/ports.md`: YAML: No opening ---
- `wiki/concepts/ports.md`: Строк: 4 (< 10)
- `wiki/concepts/ports.md`: Нет ссылок на книги [[books/...]]
- `wiki/concepts/ports.md`: Нет вики-ссылок (найдено: 0)
- `wiki/places/ramaditas.md`: YAML: Invalid YAML line: - places
- `wiki/people/skalan-zhak.md`: YAML: Invalid YAML line: - people
- `wiki/books/12-tsivilizaciya-bogov-egipta.md`: YAML: Invalid YAML line: - археология
- `wiki/books/12-tsivilizaciya-bogov-egipta.md`: Нет ссылок на книги [[books/...]]
- `wiki/people/erazm-darvin.md`: YAML: Invalid YAML line: - people
- `wiki/people/nicolae-vlassa.md`: YAML: Invalid YAML line: - people
- `wiki/places/sikhem.md`: YAML: Invalid YAML line: - places
- `wiki/places/chile.md`: YAML: No opening ---
- `wiki/places/chile.md`: Строк: 4 (< 10)
- `wiki/places/chile.md`: Нет ссылок на книги [[books/...]]
- `wiki/places/chile.md`: Нет вики-ссылок (найдено: 0)
- `wiki/people/bernard-gruzdy.md`: YAML: Invalid YAML line: - people
- `wiki/concepts/faeton.md`: Китайские символы: 1
- `wiki/concepts/horizontal-gene-transfer.md`: YAML: Invalid YAML line: - concepts
- `wiki/places/baffinova-zemlya.md`: YAML: Invalid YAML line: - география
- `wiki/people/kothar-wa-khasis.md`: YAML: Invalid YAML line: - people
- `wiki/concepts/sacred-sites.md`: Нет ссылок на книги [[books/...]]
- `wiki/places/verin-naver.md`: YAML: Invalid YAML line: - places
- `wiki/places/yapon.md`: YAML: Invalid YAML line: - places
- `wiki/places/yapon.md`: Китайские символы: 1
- `wiki/places/delfy.md`: Строк: 8 (< 10)
- `wiki/places/delfy.md`: Нет ссылок на книги [[books/...]]
- `wiki/places/delfy.md`: Нет вики-ссылок (найдено: 0)
- `wiki/people/didero.md`: YAML: Invalid YAML line: - people
- `wiki/people/didero.md`: Нет вики-ссылок (найдено: 0)
- `wiki/people/holmes.md`: YAML: Invalid YAML line: - people
- `wiki/people/holmes.md`: Нет вики-ссылок (найдено: 0)
- `wiki/people/teyyar-de-sharden.md`: YAML: Invalid YAML line: - people
- `wiki/artifacts/indeks-artefaktov.md`: Нет ссылок на книги [[books/...]]
- `wiki/people/dzhoanni-isla.md`: YAML: Invalid YAML line: - people
- `wiki/people/sergej-grigorev.md`: YAML: Invalid YAML line: - people
- `wiki/artifacts/nefritovaya-trubka.md`: Китайские символы: 1
- `wiki/people/lenin-vladimir-ilich.md`: YAML: Invalid YAML line: - people
- `wiki/people/kont-ogyst.md`: YAML: Invalid YAML line: - people
- `wiki/places/sihem.md`: Нет ссылок на книги [[books/...]]
- `wiki/people/bor-nils.md`: YAML: Invalid YAML line: - people
- `wiki/people/tom-ren.md`: YAML: Invalid YAML line: - people
- `wiki/people/tolstoy.md`: YAML: Invalid YAML line: - people
- `wiki/people/tolstoy.md`: Нет вики-ссылок (найдено: 0)
- `wiki/people/christopher-dunn.md`: YAML: Invalid YAML line: - people
- `wiki/people/evens.md`: YAML: Invalid YAML line: - people
- `wiki/artifacts/keramika-naska.md`: Нет ссылок на книги [[books/...]]
- `wiki/artifacts/keramika-naska.md`: Нет вики-ссылок (найдено: 0)
- `wiki/people/ilu.md`: YAML: Invalid YAML line: - people

... и ещё 126 статей с проблемами

## Детали по файлам

| Файл | YAML | Строк | Книги | Wiki | Китай | Нейтральность |
|------|------|-------|-------|------|-------|---------------|
| places/tatarstan.md | OK | OK | OK | OK | OK | OK |
| artifacts/objekt-ayud.md | OK | OK | OK | OK | OK | OK |
| people/artur-poznanskij.md | OK | OK | OK | OK | OK | OK |
| people/nimrod.md | FAIL | OK | OK | OK | OK | OK |
| concepts/metallurgy.md | OK | OK | OK | OK | FAIL(1) | OK |
| places/sintashta.md | OK | OK | OK | OK | OK | OK |
| concepts/ports.md | FAIL | FAIL(4) | FAIL | FAIL(0) | OK | OK |
| places/ramaditas.md | FAIL | OK | OK | OK | OK | OK |
| people/skalan-zhak.md | FAIL | OK | OK | OK | OK | OK |
| books/12-tsivilizaciya-bogov-egipta.md | FAIL | OK | FAIL | OK | OK | OK |
| people/berg.md | OK | OK | OK | OK | OK | OK |
| people/erazm-darvin.md | FAIL | OK | OK | OK | OK | OK |
| events/expedition-3rd-millennium.md | OK | OK | OK | OK | OK | OK |
| places/sumer.md | OK | OK | OK | OK | OK | OK |
| concepts/baalshemin.md | OK | OK | OK | OK | OK | OK |
| concepts/dva-civilizacii.md | OK | OK | OK | OK | OK | OK |
| people/nicolae-vlassa.md | FAIL | OK | OK | OK | OK | OK |
| concepts/proishozhdenie-draconov.md | OK | OK | OK | OK | OK | OK |
| places/rossiya.md | OK | OK | OK | OK | OK | OK |
| places/sikhem.md | FAIL | OK | OK | OK | OK | OK |
| places/parakas.md | OK | OK | OK | OK | OK | OK |
| places/plateau-nazca.md | OK | OK | OK | OK | OK | OK |
| events/razvedyvatelnaya-missiya-avraama.md | OK | OK | OK | OK | OK | OK |
| places/chile.md | FAIL | FAIL(4) | FAIL | FAIL(0) | OK | OK |
| people/bernard-gruzdy.md | FAIL | OK | OK | OK | OK | OK |
| concepts/faeton.md | OK | OK | OK | OK | FAIL(1) | OK |
| concepts/horizontal-gene-transfer.md | FAIL | OK | OK | OK | OK | OK |
| artifacts/kamni-iki.md | OK | OK | OK | OK | OK | OK |
| places/baffinova-zemlya.md | FAIL | OK | OK | OK | OK | OK |
| people/kothar-wa-khasis.md | FAIL | OK | OK | OK | OK | OK |
| concepts/sacred-sites.md | OK | OK | FAIL | OK | OK | OK |
| people/konzele.md | OK | OK | OK | OK | OK | OK |
| places/verin-naver.md | FAIL | OK | OK | OK | OK | OK |
| places/yapon.md | FAIL | OK | OK | OK | FAIL(1) | OK |
| people/eldridge.md | OK | OK | OK | OK | OK | OK |
| places/delfy.md | OK | FAIL(8) | FAIL | FAIL(0) | OK | OK |
| people/didero.md | FAIL | OK | OK | FAIL(0) | OK | OK |
| places/damask.md | OK | OK | OK | OK | OK | OK |
| people/holmes.md | FAIL | OK | OK | FAIL(0) | OK | OK |
| people/teyyar-de-sharden.md | FAIL | OK | OK | OK | OK | OK |
| places/malaya-zemlya.md | OK | OK | OK | OK | OK | OK |
| places/more-rossa.md | OK | OK | OK | OK | OK | OK |
| artifacts/indeks-artefaktov.md | OK | OK | FAIL | OK | OK | OK |
| people/dzhoanni-isla.md | FAIL | OK | OK | OK | OK | OK |
| artifacts/serapeum-sarcophagi.md | OK | OK | OK | OK | OK | OK |
| people/sergej-grigorev.md | FAIL | OK | OK | OK | OK | OK |
| artifacts/nefritovaya-trubka.md | OK | OK | OK | OK | FAIL(1) | OK |
| people/lenin-vladimir-ilich.md | FAIL | OK | OK | OK | OK | OK |
| people/kont-ogyst.md | FAIL | OK | OK | OK | OK | OK |
| places/sibir.md | OK | OK | OK | OK | OK | OK |
| places/sihem.md | OK | OK | FAIL | OK | OK | OK |
| people/bor-nils.md | FAIL | OK | OK | OK | OK | OK |
| people/tom-ren.md | FAIL | OK | OK | OK | OK | OK |
| people/tolstoy.md | FAIL | OK | OK | FAIL(0) | OK | OK |
| people/christopher-dunn.md | FAIL | OK | OK | OK | OK | OK |
| people/evens.md | FAIL | OK | OK | OK | OK | OK |
| artifacts/keramika-naska.md | OK | OK | FAIL | FAIL(0) | OK | OK |
| places/shinar.md | OK | OK | OK | OK | OK | OK |
| people/ilu.md | FAIL | OK | OK | OK | FAIL(1) | OK |
| places/mari-gorod.md | FAIL | OK | OK | OK | OK | OK |
| concepts/mednye-splavy-i-tekhnologii.md | OK | OK | OK | OK | OK | OK |
| places/tiauanako.md | OK | OK | FAIL | FAIL(0) | OK | OK |
| people/maya-people.md | OK | OK | OK | OK | OK | OK |
| people/berdyaev-nikolay-aleksandrovich.md | FAIL | OK | OK | OK | OK | OK |
| places/glarnskie-alpy.md | FAIL | OK | OK | OK | OK | OK |
| people/kuk-k.md | FAIL | OK | OK | FAIL(0) | OK | OK |
| artifacts/dogu.md | OK | OK | OK | OK | OK | OK |
| places/masada.md | FAIL | OK | OK | OK | OK | OK |
| people/hepgud-charlz.md | FAIL | OK | OK | OK | FAIL(1) | OK |
| places/akhet-aton.md | FAIL | OK | OK | OK | OK | OK |
| people/lobachevskij.md | FAIL | OK | OK | OK | OK | OK |
| concepts/gennaya-inzheneriya.md | OK | OK | OK | OK | OK | OK |
| artifacts/parizhskij-kodeks.md | OK | OK | OK | OK | OK | OK |
| people/anu.md | FAIL | OK | OK | OK | OK | OK |
| artifacts/homo-erectus-java.md | OK | OK | OK | OK | FAIL(1) | OK |
| concepts/gibridizaciya.md | OK | OK | OK | OK | OK | OK |
| events/arkaim-third-discovery.md | FAIL | FAIL(4) | FAIL | FAIL(0) | OK | OK |
| people/de-yong.md | FAIL | OK | OK | OK | OK | OK |
| people/pierre-teyar-de-shardan.md | FAIL | OK | OK | OK | OK | OK |
| artifacts/nadpisi-vaiza.md | OK | OK | OK | OK | OK | OK |
| concepts/temple-destruction-70.md | OK | OK | OK | OK | OK | OK |
| places/indiya.md | OK | OK | OK | OK | OK | OK |
| artifacts/templo-mayor.md | OK | OK | OK | FAIL(0) | OK | OK |
| people/koglen.md | FAIL | OK | OK | OK | OK | OK |
| people/balabanova-svetlana.md | FAIL | OK | OK | OK | OK | OK |
| concepts/neolithic.md | FAIL | FAIL(4) | FAIL | FAIL(0) | OK | OK |
| concepts/shumerskiy-spisok-koroley.md | OK | OK | OK | OK | OK | OK |
| people/fred-hoyle.md | FAIL | OK | OK | OK | OK | OK |
| glavnaya.md | FAIL | OK | OK | OK | OK | OK |
| places/aleppo.md | OK | OK | OK | OK | OK | OK |
| people/lehtman.md | FAIL | OK | OK | OK | OK | OK |
| expeditions/efiopskaya-ekspediciya-2008.md | OK | OK | OK | OK | OK | OK |
| expeditions/ekspeditsii.md | OK | OK | OK | OK | OK | OK |
| concepts/neytralnye-yazyki.md | OK | OK | OK | OK | OK | OK |
| people/kaufman.md | FAIL | OK | OK | OK | OK | OK |
| people/robinson.md | OK | OK | OK | OK | OK | OK |
| artifacts/kern-pitri-n.md | OK | OK | FAIL | OK | OK | OK |
| places/makedoniya.md | OK | FAIL(8) | FAIL | FAIL(0) | OK | OK |
| concepts/foneticheskoe-pismo.md | OK | OK | OK | OK | OK | OK |
| people/sehmet.md | FAIL | OK | OK | OK | OK | OK |
| people/vayz-howard.md | FAIL | OK | OK | OK | OK | OK |
| places/fryazino.md | OK | OK | OK | OK | OK | OK |
| places/sinay.md | FAIL | OK | OK | OK | OK | OK |
| concepts/kollekciya-djulsruda.md | OK | OK | OK | OK | OK | OK |
| places/saqqara.md | OK | OK | OK | OK | OK | OK |
| artifacts/ural-spirals.md | OK | OK | OK | OK | OK | OK |
| people/nevem.md | FAIL | OK | OK | OK | OK | OK |
| concepts/amon.md | OK | OK | OK | OK | OK | OK |
| books/09-geohronologiya.md | FAIL | OK | OK | OK | OK | OK |
| concepts/bible.md | OK | OK | OK | OK | OK | OK |
| people/djedefra.md | FAIL | OK | FAIL | FAIL(0) | OK | OK |
| places/russia.md | FAIL | FAIL(4) | FAIL | FAIL(0) | OK | OK |
| places/valley-of-kings.md | FAIL | OK | OK | OK | OK | OK |
| concepts/kamennougolnyj-period.md | OK | OK | OK | OK | FAIL(1) | OK |
| places/peshchera-shanidar.md | OK | OK | OK | OK | OK | OK |
| concepts/principle-of-incompleteness.md | OK | OK | OK | OK | OK | OK |
| places/omeyads.md | OK | OK | OK | OK | OK | OK |
| places/dholavira.md | FAIL | OK | OK | OK | OK | OK |
| concepts/yamato.md | OK | OK | OK | OK | OK | OK |
| places/morray.md | OK | OK | OK | OK | FAIL(1) | OK |
| places/damascus.md | FAIL | FAIL(4) | FAIL | FAIL(0) | OK | OK |
| people/belokon.md | FAIL | OK | OK | OK | OK | OK |
| places/kazakhstan.md | FAIL | FAIL(4) | FAIL | FAIL(0) | OK | OK |
| concepts/sarcophagus-king-chamber.md | OK | OK | OK | OK | FAIL(1) | OK |
| concepts/metalloobrabotka.md | OK | OK | OK | OK | FAIL(1) | OK |
| concepts/nefritovaya-trubka.md | OK | OK | OK | OK | OK | OK |
| places/dzharmo.md | FAIL | OK | OK | OK | OK | OK |
| places/denisova-cave.md | OK | OK | OK | OK | OK | OK |
| people/levy-bruhl.md | FAIL | OK | OK | FAIL(0) | OK | OK |
| places/abasidy.md | OK | FAIL(8) | FAIL | FAIL(0) | OK | OK |
| places/alexandria.md | OK | OK | OK | OK | OK | OK |
| events/osnovanie-tamplierov.md | OK | OK | OK | OK | OK | OK |
| places/india.md | FAIL | FAIL(4) | FAIL | FAIL(0) | OK | OK |
| people/buiteker.md | FAIL | OK | OK | OK | OK | OK |
| concepts/prezentumciya-vinovnosti.md | OK | OK | OK | OK | OK | OK |
| concepts/gondvanskoe-oledenenie.md | OK | OK | OK | OK | OK | OK |
| places/platforma-andros.md | OK | OK | OK | OK | OK | OK |
| concepts/solnechnaya-sistema.md | OK | OK | OK | OK | OK | OK |
| concepts/ben-ben.md | OK | OK | OK | OK | OK | OK |
| artifacts/sumer-clay-tablets.md | OK | OK | OK | OK | FAIL(1) | OK |
| places/tula-maya.md | OK | OK | OK | OK | OK | OK |
| concepts/dinozavri-na-kamnyah-iki.md | OK | OK | OK | OK | OK | OK |
| places/sredizemnoe-more.md | OK | FAIL(8) | FAIL | FAIL(0) | OK | OK |
| events/evolyuciya-obraz-dracon.md | OK | OK | OK | OK | OK | OK |
| events/dvadcatipyatiletniy-spor.md | OK | OK | OK | OK | OK | OK |
| places/palmyra.md | OK | OK | OK | OK | OK | OK |
| concepts/antenna-piramid.md | OK | OK | OK | OK | OK | OK |
| places/reka-huanhe.md | OK | OK | OK | OK | OK | OK |
| books/05-rodina-bogov.md | FAIL | OK | OK | OK | OK | OK |
| people/kolba.md | FAIL | OK | OK | OK | OK | OK |
| people/kumarbi.md | OK | OK | OK | OK | OK | OK |
| places/alpy.md | FAIL | FAIL(4) | FAIL | FAIL(0) | OK | OK |
| places/strana-gorodov.md | OK | OK | OK | OK | OK | OK |
| people/mutu.md | FAIL | OK | OK | OK | FAIL(1) | OK |
| concepts/era-lva.md | OK | OK | OK | OK | FAIL(1) | OK |
| places/memphis.md | OK | OK | FAIL | FAIL(0) | OK | OK |
| artifacts/galenit.md | FAIL | OK | OK | OK | FAIL(1) | OK |
| places/irodion.md | OK | OK | OK | OK | OK | OK |
| places/indus-valley.md | FAIL | FAIL(4) | FAIL | FAIL(0) | OK | OK |
| people/menkaure.md | FAIL | OK | OK | OK | OK | OK |
| concepts/geology.md | OK | OK | FAIL | OK | OK | OK |
| concepts/piktografika-i-ieroglifika.md | OK | OK | OK | OK | OK | OK |
| people/raicho-marinov.md | FAIL | OK | OK | OK | OK | OK |
| people/ivan-guzman-de-rohas.md | OK | OK | OK | OK | OK | OK |
| people/solomon.md | FAIL | OK | OK | OK | OK | OK |
| places/anatoliya.md | OK | OK | OK | OK | OK | OK |
| concepts/teoriya-evolyucii.md | OK | OK | OK | OK | OK | OK |
| concepts/plastilinovaya-tekhnologiya.md | OK | OK | OK | OK | OK | OK |
| concepts/janibekov-effect.md | OK | OK | OK | OK | OK | OK |
| concepts/poyas-asteroid.md | FAIL | FAIL(4) | FAIL | FAIL(0) | OK | OK |
| people/avraam.md | FAIL | OK | OK | OK | OK | OK |
| people/best.md | FAIL | OK | OK | OK | OK | OK |
| artifacts/korona-atefa.md | OK | OK | OK | OK | OK | OK |
| concepts/uniformizm.md | OK | OK | OK | OK | OK | OK |
| places/elephantine.md | OK | OK | OK | OK | OK | OK |
| concepts/zemledelie-kak-dar-bogov.md | OK | OK | OK | OK | OK | OK |
| places/christ-the-savior.md | OK | OK | OK | OK | OK | OK |
| concepts/pacific-ocean.md | FAIL | FAIL(4) | FAIL | FAIL(0) | OK | OK |
| concepts/dvuhcivizacionnaya-gipoteza.md | OK | OK | OK | OK | FAIL(1) | OK |
| places/vincha.md | OK | OK | OK | OK | OK | OK |
| people/schliemann.md | OK | OK | OK | OK | OK | OK |
| concepts/posokh-aarona.md | OK | OK | OK | OK | OK | OK |
| places/palmira.md | FAIL | FAIL(4) | FAIL | FAIL(0) | OK | OK |
| places/mid-atlantic-ridge.md | OK | OK | OK | OK | OK | OK |
| concepts/megaculture-traces.md | OK | OK | OK | OK | OK | OK |
| concepts/rezonansno-dissonansnoe-vzaimodeystvie.md | OK | OK | OK | OK | OK | OK |
| concepts/tin-mining.md | FAIL | FAIL(4) | FAIL | FAIL(0) | OK | OK |
| people/mariya-rajhe.md | FAIL | OK | OK | OK | OK | OK |
| places/meksika.md | OK | OK | OK | OK | OK | OK |
| places/nile.md | FAIL | OK | OK | OK | OK | OK |
| concepts/dragon-huanhe.md | OK | OK | OK | OK | OK | OK |
| concepts/boltik-v-kamne.md | OK | OK | OK | OK | OK | OK |
| people/rottemberg.md | FAIL | OK | OK | FAIL(0) | OK | OK |
| places/philippine-sea.md | OK | OK | OK | OK | OK | OK |
| people/edgar.md | FAIL | OK | OK | OK | OK | OK |
| people/margoliash.md | OK | OK | OK | OK | OK | OK |
| places/plita-skota.md | OK | OK | OK | OK | OK | OK |
| people/robert-schoch.md | FAIL | OK | OK | OK | OK | OK |
| people/lazarov-m.md | FAIL | OK | OK | OK | OK | OK |
| places/bagamskaya-banka.md | FAIL | OK | OK | OK | OK | OK |
