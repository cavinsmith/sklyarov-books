#!/bin/bash
TOTAL=0; PASS=0
FAIL_FM=0; FAIL_LINES=0; FAIL_BOOKS=0; FAIL_LINKS=0; FAIL_CHINESE=0
DETAILS=""

while IFS= read -r f; do
  TOTAL=$((TOTAL+1))
  fname=$(echo "$f" | sed 's|.*/wiki/||')
  issues=""
  
  # 1. YAML frontmatter: first line must be ---
  first=$(head -1 "$f")
  if [[ "$first" != "---" ]]; then
    issues="${issues}NO_FM|"
    FAIL_FM=$((FAIL_FM+1))
  else
    # Check closing --- exists (after line 1)
    close=$(awk 'NR>1 && /^---$/{print NR; exit}' "$f")
    if [[ -z "$close" ]]; then
      issues="${issues}UNCLOSED_FM|"
      FAIL_FM=$((FAIL_FM+1))
    fi
  fi
  
  # 2. Lines >= 15
  lc=$(wc -l < "$f" | tr -d ' ')
  if [[ $lc -lt 15 ]]; then
    issues="${issues}LINES(${lc})|"
    FAIL_LINES=$((FAIL_LINES+1))
  fi
  
  # 3. Book refs [[books/...]]
  br=$(grep -c '\[\[books/' "$f" || true)
  if [[ "$br" -eq 0 ]]; then
    issues="${issues}NO_BOOKS|"
    FAIL_BOOKS=$((FAIL_BOOKS+1))
  fi
  
  # 4. Wiki links >= 3 unique
  wl=$(grep -oE '\[\[[^]]+\]\]' "$f" | sort -u | wc -l | tr -d ' ')
  if [[ "$wl" -lt 3 ]]; then
    issues="${issues}LINKS(${wl})|"
    FAIL_LINKS=$((FAIL_LINKS+1))
  fi
  
  # 5. Chinese characters (Unicode range using LC_ALL)
  ch=$(LC_ALL=C grep -cP '[\x{4e00}-\x{9fff}]' "$f" 2>/dev/null || true)
  if [[ "$ch" -gt 0 ]] 2>/dev/null; then
    issues="${issues}CHINESE|"
    FAIL_CHINESE=$((FAIL_CHINESE+1))
  fi
  
  if [[ -z "$issues" ]]; then
    PASS=$((PASS+1))
  else
    DETAILS="${DETAILS}${fname}: ${issues}\n"
  fi
done < <(find wiki -name "*.md" -not -path "*/guides/*" -not -name "index.md" -not -name "README.md" | sort -R | head -200)

echo "=== FINAL VERIFICATION #21 ==="
echo "Total: $TOTAL"
echo "Passed: $PASS"
echo "Failed: $((TOTAL-PASS))"
echo ""
echo "=== BY CATEGORY ==="
echo "Frontmatter: $FAIL_FM"
echo "Lines <15: $FAIL_LINES"
echo "No book refs: $FAIL_BOOKS"
echo "Wikilinks <3: $FAIL_LINKS"
echo "Chinese chars: $FAIL_CHINESE"
echo ""
echo "=== DETAILS ==="
echo -e "$DETAILS"
