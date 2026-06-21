#!/usr/bin/env python3
"""Create inventory of all books with metadata."""

import os
import sys
import json
from pathlib import Path

# Add instruments to path
sys.path.insert(0, str(Path(__file__).parent))
from extract import extract_file

REPO_ROOT = Path(__file__).parent.parent

def get_all_books():
    """Get all book files from repo root and epub-books."""
    books = []
    seen = set()

    # Root directory
    for f in REPO_ROOT.iterdir():
        if f.suffix.lower() in ('.fb2', '.epub', '.pdf', '.mht', '.txt') and not f.name.startswith('.'):
            key = f.stem.lower()
            if key not in seen:
                seen.add(key)
                books.append(f)

    # epub-books directory
    epub_dir = REPO_ROOT / 'epub-books'
    if epub_dir.exists():
        for f in epub_dir.iterdir():
            if f.suffix.lower() in ('.epub', '.fb2'):
                key = f.stem.lower()
                if key not in seen:
                    seen.add(key)
                    books.append(f)

    return books

def main():
    books = get_all_books()
    inventory = []

    for book_path in sorted(books, key=lambda x: x.name):
        print(f"Processing: {book_path.name}", file=sys.stderr)
        try:
            result = extract_file(str(book_path))
            meta = {
                'filename': book_path.name,
                'path': str(book_path.relative_to(REPO_ROOT)),
                'format': book_path.suffix.lower(),
                'title': result.get('title', book_path.stem),
                'author': result.get('author', 'Unknown'),
                'annotation': result.get('annotation', '')[:500],
                'text_length': len(result.get('text', '')),
                'has_error': 'error' in result,
            }
            inventory.append(meta)
        except Exception as e:
            print(f"  ERROR: {e}", file=sys.stderr)
            inventory.append({
                'filename': book_path.name,
                'path': str(book_path.relative_to(REPO_ROOT)),
                'format': book_path.suffix.lower(),
                'title': book_path.stem,
                'author': 'Unknown',
                'error': str(e),
            })

    # Save inventory
    output = REPO_ROOT / 'instruments' / 'inventory.json'
    with open(output, 'w', encoding='utf-8') as f:
        json.dump(inventory, f, ensure_ascii=False, indent=2)

    # Print summary
    print(f"\nTotal books: {len(inventory)}")
    print(f"Inventory saved to: {output}")

    # List unique titles
    print("\n=== UNIQUE BOOK TITLES ===")
    titles = {}
    for b in inventory:
        t = b.get('title', b['filename'])
        if t not in titles:
            titles[t] = []
        titles[t].append(b['filename'])

    for title, files in sorted(titles.items()):
        dup = f" (duplicates: {', '.join(files[1:])})" if len(files) > 1 else ""
        print(f"  {title}{dup}")

if __name__ == '__main__':
    main()
