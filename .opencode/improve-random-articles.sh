#!/bin/bash
# Глубокое улучшение 100 случайных статей в wiki/

WIKI_DIR="/Users/cavin/Documents/sklyarov-books/wiki"
EXTRACTS_DIR="/Users/cavin/Documents/sklyarov-books/.opencode/extracts"
REPORT_FILE="/Users/cavin/Documents/sklyarov-books/.opencode/validation/improvement-report-$(date +%Y%m%d-%H%M%S).md"

mkdir -p /Users/cavin/Documents/sklyarov-books/.opencode/validation

echo "# Отчёт об улучшении статей" > "$REPORT_FILE"
echo "Дата: $(date)" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Получаем 100 случайных статей
find "$WIKI_DIR" -name "*.md" -not -name "README.md" -not -name "glavnaya.md" | sort -R | head -100 > /tmp/articles-to-improve.txt

echo "## Статистика" >> "$REPORT_FILE"
echo "Всего статей для улучшения: $(wc -l < /tmp/articles-to-improve.txt)" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Анализируем каждую статью
while IFS= read -r article; do
    filename=$(basename "$article" .md)
    relpath="${article#$WIKI_DIR/}"
    
    # Проверки
    issues=()
    
    # 1. YAML-фронтматтер
    if ! head -1 "$article" | grep -q "^---"; then
        issues+=("Нет YAML-фронтматтера")
    fi
    
    # 2. Количество строк
    lines=$(wc -l < "$article")
    if [ "$lines" -lt 20 ]; then
        issues+=("Слишком короткая ($lines строк, нужно минимум 20)")
    fi
    
    # 3. Ссылки на книги
    if ! grep -q "\[\[books/" "$article"; then
        issues+=("Нет ссылок на книги [[books/...]]")
    fi
    
    # 4. Вики-ссылки (минимум 3)
    wikilinks=$(grep -o "\[\[[^]]*\]\]" "$article" | wc -l | tr -d ' ')
    if [ "$wikilinks" -lt 3 ]; then
        issues+=("Мало вики-ссылок ($wikilinks, нужно минимум 3)")
    fi
    
    # 5. Китайские символы
    if grep -Pq "[\x{4e00}-\x{9fff}]" "$article" 2>/dev/null; then
        issues+=("Обнаружены китайские символы")
    fi
    
    # 6. Описание в YAML
    if ! grep -q "^description:" "$article"; then
        issues+=("Нет description в YAML")
    fi
    
    # Формируем отчёт
    if [ ${#issues[@]} -gt 0 ]; then
        echo "### $relpath" >> "$REPORT_FILE"
        echo "Проблемы:" >> "$REPORT_FILE"
        for issue in "${issues[@]}"; do
            echo "- $issue" >> "$REPORT_FILE"
        done
        echo "" >> "$REPORT_FILE"
    fi
    
done < /tmp/articles-to-improve.txt

echo "Отчёт сохранён: $REPORT_FILE"
cat "$REPORT_FILE"
