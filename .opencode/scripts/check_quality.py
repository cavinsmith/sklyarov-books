#!/usr/bin/env python3
import os
import re
import yaml
import sys

def check_quality(filepath):
    issues = []
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Check YAML frontmatter
    if not content.startswith('---'):
        issues.append("YAML frontmatter missing")
    else:
        try:
            # Extract frontmatter
            parts = content.split('---', 2)
            if len(parts) < 3:
                issues.append("YAML frontmatter incomplete")
            else:
                frontmatter = yaml.safe_load(parts[1])
                if not frontmatter:
                    issues.append("YAML frontmatter empty")
                else:
                    if 'slug' not in frontmatter:
                        issues.append("Missing 'slug' in frontmatter")
                    if 'title' not in frontmatter:
                        issues.append("Missing 'title' in frontmatter")
                    if 'categories' not in frontmatter:
                        issues.append("Missing 'categories' in frontmatter")
        except yaml.YAMLError as e:
            issues.append(f"YAML parse error: {e}")
    
    # Check minimum length (20 lines)
    lines = content.split('\n')
    if len(lines) < 20:
        issues.append(f"Too short: {len(lines)} lines (min 20)")
    
    # Check for book links
    book_links = re.findall(r'\[\[books/[^]]+\]\]', content)
    if not book_links:
        issues.append("No book links found")
    
    # Check for wiki links (min 3)
    wiki_links = re.findall(r'\[\[[^]]+\]\]', content)
    if len(wiki_links) < 3:
        issues.append(f"Too few wiki links: {len(wiki_links)} (min 3)")
    
    # Check for Chinese characters
    chinese_chars = re.findall(r'[\u4e00-\u9fff]', content)
    if chinese_chars:
        issues.append(f"Found {len(chinese_chars)} Chinese characters")
    
    # Check for neutral tone (simple check: no exclamation marks in sentences)
    sentences = re.split(r'[.!?]+', content)
    exclamatory = [s for s in sentences if '!' in s]
    if len(exclamatory) > len(sentences) * 0.1:  # More than 10% exclamatory sentences
        issues.append("Potentially non-neutral tone (too many exclamation marks)")
    
    return issues

def main():
    if len(sys.argv) < 2:
        print("Usage: check_quality.py <file1.md> [file2.md ...]")
        sys.exit(1)
    
    for filepath in sys.argv[1:]:
        if not os.path.exists(filepath):
            print(f"File not found: {filepath}")
            continue
        
        issues = check_quality(filepath)
        if issues:
            print(f"\n{filepath}:")
            for issue in issues:
                print(f"  - {issue}")
        else:
            print(f"{filepath}: OK")

if __name__ == "__main__":
    main()