#!/usr/bin/env python3
"""Extract text from fb2 and epub files."""

import sys
import os
import re
from pathlib import Path

def extract_fb2(filepath):
    """Extract text from FB2 file."""
    from lxml import etree

    tree = etree.parse(filepath)
    root = tree.getroot()
    ns = {'fb': 'http://www.gribuser.ru/xml/fictionbook/2.0'}

    result = {}

    # Extract metadata
    title_el = root.find('.//fb:title-info/fb:book-title', ns)
    if title_el is not None and title_el.text:
        result['title'] = title_el.text.strip()

    author_el = root.find('.//fb:title-info/fb:author', ns)
    if author_el is not None:
        first = author_el.findtext('fb:first-name', '', ns)
        last = author_el.findtext('fb:last-name', '', ns)
        result['author'] = f"{first} {last}".strip()

    annotation_el = root.find('.//fb:title-info/fb:annotation', ns)
    if annotation_el is not None:
        result['annotation'] = etree.tostring(annotation_el, method='text', encoding='unicode').strip()

    # Try body first (most common structure)
    body_el = root.find('.//fb:body', ns)
    if body_el is not None:
        result['text'] = etree.tostring(body_el, method='text', encoding='unicode').strip()
    else:
        # Fallback to text element
        text_el = root.find('.//fb:text', ns)
        if text_el is not None:
            result['text'] = etree.tostring(text_el, method='text', encoding='unicode').strip()

    return result

def extract_epub(filepath):
    """Extract text from EPUB file."""
    import ebooklib
    from ebooklib import epub
    from bs4 import BeautifulSoup

    book = epub.read_epub(filepath)
    result = {}

    # Metadata
    title = book.get_metadata('DC', 'title')
    if title:
        result['title'] = title[0][0]

    author = book.get_metadata('DC', 'creator')
    if author:
        result['author'] = author[0][0]

    # Extract text from all items
    text_parts = []
    for item in book.get_items_of_type(ebooklib.ITEM_DOCUMENT):
        soup = BeautifulSoup(item.get_content(), 'html.parser')
        text = soup.get_text(separator='\n')
        if text.strip():
            text_parts.append(text.strip())

    result['text'] = '\n\n'.join(text_parts)
    return result

def extract_file(filepath):
    """Extract text from a file based on extension."""
    ext = Path(filepath).suffix.lower()

    if ext == '.fb2':
        return extract_fb2(filepath)
    elif ext == '.epub':
        return extract_epub(filepath)
    elif ext == '.txt':
        with open(filepath, 'r', encoding='utf-8', errors='ignore') as f:
            return {'text': f.read()}
    elif ext == '.pdf':
        return {'text': '[PDF - requires manual extraction]', 'error': 'PDF not supported yet'}
    elif ext == '.mht':
        return {'text': '[MHT - web archive]', 'error': 'MHT not supported yet'}
    else:
        return {'text': f'[Unknown format: {ext}]', 'error': f'Unknown format: {ext}'}

def main():
    if len(sys.argv) < 2:
        print("Usage: python extract.py <file.fb2|file.epub> [--metadata-only]")
        sys.exit(1)

    filepath = sys.argv[1]
    metadata_only = '--metadata-only' in sys.argv

    result = extract_file(filepath)

    if metadata_only:
        result.pop('text', None)

    for key, value in result.items():
        if key == 'text' and not metadata_only:
            print(f"\n{'='*60}\nTEXT:\n{'='*60}")
            print(value)
        else:
            print(f"{key}: {value}")

if __name__ == '__main__':
    main()
