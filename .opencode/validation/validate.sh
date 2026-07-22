#!/bin/bash
# Валидация 200 случайных статей вики

REPORT="/Users/cavin/Documents/sklyarov-books/.opencode/validation/final-verification-28.md"
WIKI_DIR="/Users/cavin/Documents/sklyarov-books/wiki"
ISSUES_FILE="/tmp/wiki-issues.txt"
STATS_FILE="/tmp/wiki-stats.txt"

> "$ISSUES_FILE"
> "$STATS_FILE"

# Счётчики
total=0
has_frontmatter=0
has_title=0
min_lines=0
has_books_ref=0
has_wikilinks=0
no_chinese=0

# Список 200 файлов для проверки
FILES=(
"$WIKI_DIR/concepts/dukhovno-nematerialnyy-mir.md"
"$WIKI_DIR/concepts/samosoznanie.md"
"$WIKI_DIR/concepts/pyramid-as-antenna.md"
"$WIKI_DIR/places/kuikuylko.md"
"$WIKI_DIR/concepts/ten-commandments.md"
"$WIKI_DIR/concepts/religioznye-konflikty.md"
"$WIKI_DIR/places/rossiya.md"
"$WIKI_DIR/books/14-obitaemyy-ostrov.md"
"$WIKI_DIR/concepts/principle-of-incompleteness.md"
"$WIKI_DIR/concepts/holy-lands.md"
"$WIKI_DIR/places/sumer.md"
"$WIKI_DIR/concepts/slyudyanoy-hram.md"
"$WIKI_DIR/places/kalibangan.md"
"$WIKI_DIR/places/oregon.md"
"$WIKI_DIR/places/saint-petersburg.md"
"$WIKI_DIR/expeditions/ekspediciya-v-meksiku-2007.md"
"$WIKI_DIR/places/hatshepsut-temple.md"
"$WIKI_DIR/concepts/materializm-empiriokriticizm.md"
"$WIKI_DIR/concepts/poklonenie-baalu.md"
"$WIKI_DIR/people/lucreciy-kar.md"
"$WIKI_DIR/people/cherneih-evgenij.md"
"$WIKI_DIR/concepts/methane.md"
"$WIKI_DIR/people/vikramasinghe.md"
"$WIKI_DIR/concepts/posokh-aarona.md"
"$WIKI_DIR/people/mayakovsky.md"
"$WIKI_DIR/artifacts/saqqara-vase.md"
"$WIKI_DIR/concepts/piramida-dushi.md"
"$WIKI_DIR/concepts/actualism.md"
"$WIKI_DIR/places/vavilon-assiriya.md"
"$WIKI_DIR/artifacts/bazaltovyj-yaguar.md"
"$WIKI_DIR/artifacts/kern-pitri-n.md"
"$WIKI_DIR/places/kordoba.md"
"$WIKI_DIR/artifacts/dolomit.md"
"$WIKI_DIR/people/avraam.md"
"$WIKI_DIR/places/tell-el-amarna.md"
"$WIKI_DIR/people/charlz-layel.md"
"$WIKI_DIR/artifacts/pektorali-sipana.md"
"$WIKI_DIR/books/13-meksika-bez-krivyh-zerkal.md"
"$WIKI_DIR/concepts/letatelnie-apparaty.md"
"$WIKI_DIR/places/maya.md"
"$WIKI_DIR/concepts/massovoe-vymiranie.md"
"$WIKI_DIR/events/ramses-expedition.md"
"$WIKI_DIR/places/bnl.md"
"$WIKI_DIR/people/gilgamesh.md"
"$WIKI_DIR/concepts/baal-worship.md"
"$WIKI_DIR/places/chaco-canyon.md"
"$WIKI_DIR/concepts/drevnie-bogi.md"
"$WIKI_DIR/books/08-istoriya-zemli-bez-kamenno.md"
"$WIKI_DIR/concepts/raskol-faetona.md"
"$WIKI_DIR/places/djemdet-nasr.md"
"$WIKI_DIR/people/nil.md"
"$WIKI_DIR/people/userkaf.md"
"$WIKI_DIR/people/zdanovich-g.md"
"$WIKI_DIR/people/munk.md"
"$WIKI_DIR/concepts/fond-.md"
"$WIKI_DIR/places/antarktida.md"
"$WIKI_DIR/concepts/mortuary-temple.md"
"$WIKI_DIR/concepts/ben-ben.md"
"$WIKI_DIR/places/yonaguni.md"
"$WIKI_DIR/concepts/sirius.md"
"$WIKI_DIR/concepts/temple-destruction-.md"
"$WIKI_DIR/concepts/kovcheg-zaveta.md"
"$WIKI_DIR/concepts/sintez-lyubov.md"
"$WIKI_DIR/concepts/princzip-dopolneniya.md"
"$WIKI_DIR/concepts/veilis-discovery.md"
"$WIKI_DIR/concepts/zhiznennaya-energiya.md"
"$WIKI_DIR/places/turkmenistan.md"
"$WIKI_DIR/places/pyramids.md"
"$WIKI_DIR/concepts/pre-columbian.md"
"$WIKI_DIR/places/yapan.md"
"$WIKI_DIR/people/cortes.md"
"$WIKI_DIR/concepts/egregor.md"
"$WIKI_DIR/concepts/dragon-huanhe.md"
"$WIKI_DIR/places/tartheriya.md"
"$WIKI_DIR/concepts/paleoanthropology.md"
"$WIKI_DIR/people/pompelli.md"
"$WIKI_DIR/people/gamio.md"
"$WIKI_DIR/methods/radiouglerodnoe-datirovanie.md"
"$WIKI_DIR/people/bernar-klervosskiy.md"
"$WIKI_DIR/places/mid-atlantic-ridge.md"
"$WIKI_DIR/people/bossi.md"
"$WIKI_DIR/concepts/pyramid-energy.md"
"$WIKI_DIR/concepts/aspic.md"
"$WIKI_DIR/books/14-bibliya-i-bog.md"
"$WIKI_DIR/guides/drevniy-egipet.md"
"$WIKI_DIR/concepts/ra.md"
"$WIKI_DIR/concepts/yamm.md"
"$WIKI_DIR/concepts/tektonika-plit.md"
"$WIKI_DIR/people/rishar-andre.md"
"$WIKI_DIR/places/aladza-huyuk.md"
"$WIKI_DIR/people/khammurapi.md"
"$WIKI_DIR/places/igil.md"
"$WIKI_DIR/concepts/ideograficheskiy-princip.md"
"$WIKI_DIR/artifacts/uriy.md"
"$WIKI_DIR/people/dayan-moshe.md"
"$WIKI_DIR/places/mohenjo-daro.md"
"$WIKI_DIR/places/myort-more.md"
"$WIKI_DIR/places/silustani.md"
"$WIKI_DIR/artifacts/oblicovochnye-bloki-gizy.md"
"$WIKI_DIR/people/babilonyane.md"
"$WIKI_DIR/people/robinson.md"
"$WIKI_DIR/people/sitchin.md"
"$WIKI_DIR/places/cina-drevniy.md"
"$WIKI_DIR/places/bering-strait.md"
"$WIKI_DIR/concepts/skrizhali-zaveta.md"
"$WIKI_DIR/concepts/mednyy-vek.md"
"$WIKI_DIR/places/georgiya.md"
"$WIKI_DIR/people/ramesses-ii.md"
"$WIKI_DIR/places/gimalai.md"
"$WIKI_DIR/artifacts/trilitony.md"
"$WIKI_DIR/concepts/dao-fiziki.md"
"$WIKI_DIR/places/mitanni.md"
"$WIKI_DIR/concepts/atlantida.md"
"$WIKI_DIR/places/tiwanaku.md"
"$WIKI_DIR/places/mezopotamiya.md"
"$WIKI_DIR/concepts/plastic-technology.md"
"$WIKI_DIR/places/alyaska.md"
"$WIKI_DIR/concepts/edinaya-pismennost.md"
"$WIKI_DIR/people/haba.md"
"$WIKI_DIR/guides/megaliticheskie-sooruzheniya.md"
"$WIKI_DIR/concepts/veshchiy-yazyk-bogov.md"
"$WIKI_DIR/concepts/megaliticheskie-sooruzheniya.md"
"$WIKI_DIR/methods/dendrokhronologiya.md"
"$WIKI_DIR/places/templo-mayor.md"
"$WIKI_DIR/concepts/jenkin-nightmare.md"
"$WIKI_DIR/people/margoliash.md"
"$WIKI_DIR/people/berdyaev-nikolay-aleksandrovich.md"
"$WIKI_DIR/concepts/dva-civilizacii.md"
"$WIKI_DIR/artifacts/lucy-remains.md"
"$WIKI_DIR/people/pushkin.md"
"$WIKI_DIR/places/ostrov-paskhi.md"
"$WIKI_DIR/artifacts/memorialnye-doski.md"
"$WIKI_DIR/places/erlitou.md"
"$WIKI_DIR/places/oaxaca.md"
"$WIKI_DIR/events/pshik-kovchega.md"
"$WIKI_DIR/places/ptb.md"
"$WIKI_DIR/concepts/inventory-stela.md"
"$WIKI_DIR/people/francisko-pizarro.md"
"$WIKI_DIR/places/dzhek-hillz.md"
"$WIKI_DIR/people/van-gig.md"
"$WIKI_DIR/people/mutu.md"
"$WIKI_DIR/places/norvegiya.md"
"$WIKI_DIR/concepts/teoriya-otnositelnosti.md"
"$WIKI_DIR/artifacts/azurit.md"
"$WIKI_DIR/artifacts/mednye-topory.md"
"$WIKI_DIR/concepts/cherubim.md"
"$WIKI_DIR/concepts/sacred-sites.md"
"$WIKI_DIR/concepts/uniformizm.md"
"$WIKI_DIR/places/buto.md"
"$WIKI_DIR/artifacts/golova-yonaguni.md"
"$WIKI_DIR/methods/energeticheskiy-analiz.md"
"$WIKI_DIR/people/yung-karl-gustav.md"
"$WIKI_DIR/concepts/era-of-gods-civilization.md"
"$WIKI_DIR/concepts/pyramid-as-power-plant.md"
"$WIKI_DIR/concepts/shumerskiy-mif-o-sozdanii.md"
"$WIKI_DIR/people/ra.md"
"$WIKI_DIR/concepts/kalibrovochnye-krivye.md"
"$WIKI_DIR/people/khufu.md"
"$WIKI_DIR/places/irodion.md"
"$WIKI_DIR/concepts/med-i-zhelezo.md"
"$WIKI_DIR/people/eye.md"
"$WIKI_DIR/places/aleksandriya.md"
"$WIKI_DIR/places/uruk.md"
"$WIKI_DIR/people/erih-fon-daniken.md"
"$WIKI_DIR/concepts/tektity.md"
"$WIKI_DIR/concepts/piroliz-metana.md"
"$WIKI_DIR/people/berdyayev.md"
"$WIKI_DIR/concepts/yin.md"
"$WIKI_DIR/people/vysotsky.md"
"$WIKI_DIR/places/sican.md"
"$WIKI_DIR/guides/datirovanie.md"
"$WIKI_DIR/people/korey.md"
"$WIKI_DIR/places/dolina-carey.md"
"$WIKI_DIR/places/judean-desert.md"
"$WIKI_DIR/concepts/zodiakalnaya-simvolika.md"
"$WIKI_DIR/places/plita-skota.md"
"$WIKI_DIR/people/leonardi-bartres.md"
"$WIKI_DIR/places/labrea.md"
"$WIKI_DIR/people/toribio.md"
"$WIKI_DIR/places/tepe-yahtya.md"
"$WIKI_DIR/artifacts/kuprit.md"
"$WIKI_DIR/concepts/dilmun.md"
"$WIKI_DIR/places/elephantine.md"
"$WIKI_DIR/concepts/nagi.md"
"$WIKI_DIR/places/denderskiy-hram.md"
"$WIKI_DIR/people/hadad.md"
"$WIKI_DIR/places/aksuum.md"
"$WIKI_DIR/places/aladzha-huyuk.md"
"$WIKI_DIR/books/10-kompyuter-drevnego-kitaya.md"
"$WIKI_DIR/people/dzhulian-nott.md"
"$WIKI_DIR/people/shlikman-genrikh.md"
"$WIKI_DIR/concepts/foneticheskoe-pismo.md"
"$WIKI_DIR/people/ilf-petrov.md"
"$WIKI_DIR/artifacts/kovcheg-zaveta.md"
"$WIKI_DIR/people/buffon.md"
"$WIKI_DIR/artifacts/valley-temple.md"
"$WIKI_DIR/places/mikeny.md"
"$WIKI_DIR/people/a-p-lisicyn.md"
"$WIKI_DIR/places/knossos.md"
"$WIKI_DIR/people/siriyane.md"
)

for file in "${FILES[@]}"; do
  if [ ! -f "$file" ]; then
    echo "MISSING: $file" >> "$ISSUES_FILE"
    continue
  fi
  
  total=$((total + 1))
  relpath="${file#$WIKI_DIR/}"
  
  # 1. Проверка YAML-фронтматтера
  first_line=$(head -1 "$file")
  if [ "$first_line" = "---" ]; then
    # Ищем закрывающий ---
    closing=$(awk 'NR>1 && /^---$/ { print NR; exit }' "$file")
    if [ -n "$closing" ]; then
      has_frontmatter=$((has_frontmatter + 1))
      # Проверка наличия title
      if awk "NR>1 && NR<=$closing" "$file" | grep -q "^title:"; then
        has_title=$((has_title + 1))
      else
        echo "NO_TITLE: $relpath" >> "$ISSUES_FILE"
      fi
    else
      echo "UNCLOSED_FRONTMATTER: $relpath" >> "$ISSUES_FILE"
    fi
  else
    echo "NO_FRONTMATTER: $relpath" >> "$ISSUES_FILE"
  fi
  
  # 2. Проверка минимум 15 строк
  line_count=$(wc -l < "$file")
  if [ "$line_count" -ge 15 ]; then
    min_lines=$((min_lines + 1))
  else
    echo "TOO_SHORT ($line_count lines): $relpath" >> "$ISSUES_FILE"
  fi
  
  # 3. Проверка ссылок на книги [[books/...]]
  if grep -q '\[\[books/' "$file"; then
    has_books_ref=$((has_books_ref + 1))
  else
    echo "NO_BOOKS_REF: $relpath" >> "$ISSUES_FILE"
  fi
  
  # 4. Проверка минимум 3 вики-ссылок
  wikilink_count=$(grep -o '\[\[[^]]*\]\]' "$file" | wc -l)
  if [ "$wikilink_count" -ge 3 ]; then
    has_wikilinks=$((has_wikilinks + 1))
  else
    echo "FEW_WIKILINKS ($wikilink_count): $relpath" >> "$ISSUES_FILE"
  fi
  
  # 5. Проверка на китайские символы (Unicode range 4E00-9FFF)
  if perl -ne 'print if /[\x{4e00}-\x{9fff}]/' "$file" | grep -q .; then
    echo "CHINESE_CHARS: $relpath" >> "$ISSUES_FILE"
  else
    no_chinese=$((no_chinese + 1))
  fi
done

echo "TOTAL_CHECKED=$total" > "$STATS_FILE"
echo "FRONTMATTER=$has_frontmatter" >> "$STATS_FILE"
echo "TITLE=$has_title" >> "$STATS_FILE"
echo "MIN_LINES=$min_lines" >> "$STATS_FILE"
echo "BOOKS_REF=$has_books_ref" >> "$STATS_FILE"
echo "WIKILINKS=$has_wikilinks" >> "$STATS_FILE"
echo "NO_CHINESE=$no_chinese" >> "$STATS_FILE"

cat "$STATS_FILE"
echo "---ISSUES---"
cat "$ISSUES_FILE"
