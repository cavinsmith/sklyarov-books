#!/bin/bash
# Финальная верификация: проверка 200 случайных статей

WIKI_DIR="/Users/cavin/Documents/sklyarov-books/wiki"
REPORT="/Users/cavin/Documents/sklyarov-books/.opencode/validation/final-verification-24.md"

# Список случайных 200 статей
ARTICLES=(
"/Users/cavin/Documents/sklyarov-books/wiki/people/zuckerkandl.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/ain-dara.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/akambaro.md"
"/Users/cavin/Documents/sklyarov-books/wiki/events/nahodka-java.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/sacsayhuaman.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/gennaya-inzheneriya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/trappy.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/sarah.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/mortuary-temple.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/vayz-howard.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/observatornaya-bashnja.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/kavkaz.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/christianity.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/war-of-gods.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/zheleznye-meteority.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/golfstream.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/usa.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/pharaohs.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/raskol-faetona.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/mythology.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/karelo-finskaya-grjada.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/konceptciya-totalnogo-religioznogo-pomeshatelstva.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/monoteizm.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/babylon.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/ofir.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/gilbert.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/yahweh-vs-baal.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/kodeks-grolle.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/south-stone-baalbek.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/digonskij-sv.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/makedoniya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/best.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/religioznye-ucheniya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/lahuis.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/gold-working.md"
"/Users/cavin/Documents/sklyarov-books/wiki/methods/energeticheskiy-analiz.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/levaya-ruka-tmy.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/vysokaya-temperatura.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/rottemberg.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/gonurvit.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/piya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/menes.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/yam-mu-baal-conflict.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/mednye-splavy-i-tekhnologii.md"
"/Users/cavin/Documents/sklyarov-books/wiki/books/14-bibliya-i-bog.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/arslantepe.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/bergeron.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/ostrov-paskhi.md"
"/Users/cavin/Documents/sklyarov-books/wiki/books/11-dragonografiya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/dlinnyj-schet.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/nagada.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/kamennye-lesa.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/arktida.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/malaya-zemlya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/events/izdanie-proishozhdenie-vidov.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/anthropomorphic-gods.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/hittite.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/drevnie-goroda.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/kuikuylko.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/floristan.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/astenosfer.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/zhertvoprinosheniya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/kramer.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/gods-and-pyramids.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/hramy-s-ploskoj-kryshej.md"
"/Users/cavin/Documents/sklyarov-books/wiki/literature/huajnan-czy.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/riche-andre.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/ural-spirals.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/kenko.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/canaanites.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/tutankhamon-cache.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/religioznye-konflikty.md"
"/Users/cavin/Documents/sklyarov-books/wiki/books/30-yahweh-protiv-baala.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/teotiuakan.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/deformaciya-cherepov.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/foneticheskiy-princip.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/altiplano.md"
"/Users/cavin/Documents/sklyarov-books/wiki/events/nahodka-denisova.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/georges-cuvier.md"
"/Users/cavin/Documents/sklyarov-books/wiki/books/15-peru-i-boliviya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/sacred-valley.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/proskalzyvanie-kory.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/maat.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/megalithic-wall-temple-mount.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/syrian-desert.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/saqqara-vase.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/java.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/kifishin.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/chinese-pyramids.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/glarnskie-alpy.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/lukssor.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/la-venta.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/grenlandiya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/palenke.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/djon-dey-oregon.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/gora-geval.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/pustyna-okukakhe.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/shiyatov.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/trepanaciya-cherepov.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/metalloobrabotka.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/rodnaya-planeta-bogov.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/plastilinovaya-tekhnologiya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/dholavira.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/maxd-al-dzhahab.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/yamato.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/templo-mayor.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/podvodnaya-arkheologiya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/kusco.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/adam.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/kosmonavty-v-drevnosti.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/plastic-technology.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/karason.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/kalibangan.md"
"/Users/cavin/Documents/sklyarov-books/wiki/events/relihoznaya-reforma-ehnathona.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/russia.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/kadesh.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/nippur.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/mariette.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/shapash.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/zhih-vl.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/dva-texnologicheskih-urovnya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/larin-viktor.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/vershinin.md"
"/Users/cavin/Documents/sklyarov-books/wiki/events/zavoevanie-imperii-inkov.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/nasca.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/drevnie-tehnologii.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/mezuzah.md"
"/Users/cavin/Documents/sklyarov-books/wiki/events/creation-of-man.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/sipan.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/pyramid-texts.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/cair.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/leon-vishnyatsky.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/ritualnyj-baraban.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/posmertnyy-shok.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/charlz-darvin.md"
"/Users/cavin/Documents/sklyarov-books/wiki/expeditions/severnaya-afrika.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/klinoapismo.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/mari-gorod.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/peshchery.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/metallurgiya-drevnosti.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/syrodutnyj-process.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/kamni-iki.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/monolity.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/kollekciya-akambaro.md"
"/Users/cavin/Documents/sklyarov-books/wiki/events/razrushenie-palmiry-siriya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/mantovani.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/temple-knights-founding.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/nasledie-pyanikh-bogov.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/baalbek-trilithon.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/dubrava-mamre.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/dzhek-hillz.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/nubiya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/shimada.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/pampa-san-hose.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/kern-pitri-n7.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/lishht.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/cain.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/philippine-sea.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/many-worlds.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/mikerin-piramida.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/sodom-i-gomorra.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/indeks-mest.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/wik.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/moche.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/dolomit.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/bahamas.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/lavinaya-sedimentaciya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/grobnica-tutanhamona.md"
"/Users/cavin/Documents/sklyarov-books/wiki/books/24-opasnoe-nasledie.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/yuliya-gorlova.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/byeuvell-robert.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/nazca-geoglify.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/jenkin-nightmare.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/obsidianovye-veretena.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/tsaritsa-savskaya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/events/razrushenie-palmiry.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/mezoamerikanskaya-tsivilizaciya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/materializm-empiriokriticizm.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/romashkinskoe.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/chukovsky.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/baalbek-trilithon.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/horizontal-gene-transfer.md"
"/Users/cavin/Documents/sklyarov-books/wiki/events/voyny-za-svyatye-mesta.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/dead-sea.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/vernon-barashenkov.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/cuicuilco.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/sitchin.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/anau.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/shalim.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/oblicovochnye-bloki-gizy.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/linei-naska.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/tutanhamon.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/y-hromosoma.md"
"/Users/cavin/Documents/sklyarov-books/wiki/concepts/sredizemnomorskiy-region.md"
"/Users/cavin/Documents/sklyarov-books/wiki/artifacts/nefritovaya-spiralnaya-trubka.md"
"/Users/cavin/Documents/sklyarov-books/wiki/people/alunni.md"
"/Users/cavin/Documents/sklyarov-books/wiki/places/tartheriya.md"
"/Users/cavin/Documents/sklyarov-books/wiki/books/27-sozdanie-tsivilizaciy.md"
)

TOTAL=${#ARTICLES[@]}
PASS=0
FAIL=0
ERRORS=""

for ARTICLE in "${ARTICLES[@]}"; do
    if [ ! -f "$ARTICLE" ]; then
        ERRORS="${ERRORS}\n❌ ФАЙЛ НЕ НАЙДЕН: $ARTICLE"
        FAIL=$((FAIL+1))
        continue
    fi

    # Проверка YAML-фронтматтера
    if ! head -1 "$ARTICLE" | grep -q "^---"; then
        ERRORS="${ERRORS}\n❌ НЕТ YAML-ФРОНТМАТТЕРА: $ARTICLE"
        FAIL=$((FAIL+1))
        continue
    fi

    # Проверка минимальной длины (15 строк)
    LINES=$(wc -l < "$ARTICLE")
    if [ "$LINES" -lt 15 ]; then
        ERRORS="${ERRORS}\n❌ МАЛО СТРОК ($LINES < 15): $ARTICLE"
        FAIL=$((FAIL+1))
        continue
    fi

    # Проверка ссылок на книги
    if ! grep -q "\[\[books/" "$ARTICLE"; then
        ERRORS="${ERRORS}\n❌ НЕТ ССЫЛОК НА КНИГИ: $ARTICLE"
        FAIL=$((FAIL+1))
        continue
    fi

    # Проверка вики-ссылок (минимум 3)
    WIKI_LINKS=$(grep -o "\[\[" "$ARTICLE" | wc -l)
    if [ "$WIKI_LINKS" -lt 3 ]; then
        ERRORS="${ERRORS}\n❌ МАЛО ВИКИ-ССЫЛОК ($WIKI_LINKS < 3): $ARTICLE"
        FAIL=$((FAIL+1))
        continue
    fi

    # Проверка на китайские символы
    if grep -qP "[\x{4e00}-\x{9fff}]" "$ARTICLE" 2>/dev/null; then
        ERRORS="${ERRORS}\n❌ ЕСТЬ КИТАЙСКИЕ СИМВОЛЫ: $ARTICLE"
        FAIL=$((FAIL+1))
        continue
    fi

    PASS=$((PASS+1))
done

echo "Проверено: $TOTAL статей"
echo "Пройдено: $PASS"
echo "Провалено: $FAIL"
echo -e "$ERRORS"
