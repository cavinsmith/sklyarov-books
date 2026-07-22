#!/bin/bash
# Validate 200 random wiki articles
FILES="$@"
TOTAL=0
PASS=0
FAIL_FRONTMATTER=0
FAIL_LINES=0
FAIL_BOOKS=0
FAIL_WIKILINKS=0
FAIL_CHINESE=0
FAIL_DETAILS=""

for f in $FILES; do
  TOTAL=$((TOTAL+1))
  fname=$(echo "$f" | sed 's|.*/wiki/||')
  issues=""
  
  # 1. Check YAML frontmatter
  first_line=$(head -1 "$f")
  if [[ "$first_line" != "---" ]]; then
    issues="${issues}NO_FRONTMATTER|"
    FAIL_FRONTMATTER=$((FAIL_FRONTMATTER+1))
  else
    # Check closing ---
    line_count=$(wc -l < "$f")
    frontmatter_end=$(awk 'NR>1 && /^---$/{print NR; exit}' "$f")
    if [[ -z "$frontmatter_end" ]]; then
      issues="${issues}UNCLOSED_FRONTMATTER|"
      FAIL_FRONTMATTER=$((FAIL_FRONTMATTER+1))
    fi
  fi
  
  # 2. Check minimum 15 lines
  line_count=$(wc -l < "$f" | tr -d ' ')
  if [[ $line_count -lt 15 ]]; then
    issues="${issues}TOO_FEW_LINES(${line_count})|"
    FAIL_LINES=$((FAIL_LINES+1))
  fi
  
  # 3. Check book references [[books/...]]
  book_refs=$(grep -c '\[\[books/' "$f" 2>/dev/null || echo 0)
  if [[ $book_refs -eq 0 ]]; then
    issues="${issues}NO_BOOK_REFS|"
    FAIL_BOOKS=$((FAIL_BOOKS+1))
  fi
  
  # 4. Check wiki links (minimum 3 unique)
  wiki_links=$(grep -oP '\[\[[^]]+\]\]' "$f" 2>/dev/null | sort -u | wc -l | tr -d ' ')
  if [[ $wiki_links -lt 3 ]]; then
    issues="${issues}FEW_WIKILINKS(${wiki_links})|"
    FAIL_WIKILINKS=$((FAIL_WIKILINKS+1))
  fi
  
  # 5. Check for Chinese characters
  chinese=$(grep -P '[\x{4e00}-\x{9fff}]' "$f" 2>/dev/null | wc -l | tr -d ' ')
  if [[ $chinese -gt 0 ]]; then
    issues="${issues}HAS_CHINESE|"
    FAIL_CHINESE=$((FAIL_CHINESE+1))
  fi
  
  if [[ -z "$issues" ]]; then
    PASS=$((PASS+1))
  else
    FAIL_DETAILS="${FAIL_DETAILS}\n${fname}: ${issues}"
  fi
done

echo "=== VALIDATION RESULTS ==="
echo "Total checked: $TOTAL"
echo "Passed all checks: $PASS"
echo "Failed: $((TOTAL-PASS))"
echo ""
echo "=== FAILURES BY CATEGORY ==="
echo "Bad frontmatter: $FAIL_FRONTMATTER"
echo "Too few lines (<15): $FAIL_LINES"
echo "No book references: $FAIL_BOOKS"
echo "Too few wikilinks (<3): $FAIL_WIKILINKS"
echo "Chinese characters: $FAIL_CHINESE"
echo ""
echo "=== DETAIL ==="
echo -e "$FAIL_DETAILS"
