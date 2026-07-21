#!/usr/bin/env python3
"""Add YAML frontmatter to wiki/people/ files that don't have it."""

import os
import re
import sys

WIKI_PEOPLE_DIR = "wiki/people"

def extract_title_from_content(content: str, filename: str) -> str:
    """Extract title from the first heading in the file."""
    for line in content.split("\n"):
        line = line.strip()
        if line.startswith("# "):
            return line[2:].strip()
        elif line.startswith("## "):
            return line[3:].strip()
    # If no heading found, use filename as title
    slug = os.path.splitext(filename)[0]
    # Convert slug to title: replace hyphens with spaces and capitalize
    return slug.replace("-", " ").title()

def has_frontmatter(content: str) -> bool:
    """Check if content starts with YAML frontmatter."""
    return content.strip().startswith("---")

def make_frontmatter(slug: str, title: str) -> str:
    """Generate YAML frontmatter string."""
    # Escape quotes in title
    escaped_title = title.replace('"', '\\"')
    return f"""---
slug: {slug}
title: "{escaped_title}"
categories:
  - people
tags: []
---

"""

def process_file(filepath: str, dry_run: bool = False) -> bool:
    """Process a single file. Returns True if modified."""
    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()

    if has_frontmatter(content):
        return False

    slug = os.path.splitext(os.path.basename(filepath))[0]
    title = extract_title_from_content(content, os.path.basename(filepath))

    if not title:
        print(f"  WARNING: No heading found in {filepath}, skipping")
        return False

    new_content = make_frontmatter(slug, title) + content

    if dry_run:
        print(f"  WOULD ADD: slug={slug}, title={title}")
        return True

    with open(filepath, "w", encoding="utf-8") as f:
        f.write(new_content)

    print(f"  ADDED: slug={slug}, title={title}")
    return True

def main():
    dry_run = "--dry-run" in sys.argv

    if not os.path.isdir(WIKI_PEOPLE_DIR):
        print(f"Error: {WIKI_PEOPLE_DIR} not found")
        sys.exit(1)

    files = sorted([
        f for f in os.listdir(WIKI_PEOPLE_DIR)
        if f.endswith(".md")
    ])

    print(f"Found {len(files)} files in {WIKI_PEOPLE_DIR}")

    modified = 0
    skipped = 0
    warnings = 0

    for filename in files:
        filepath = os.path.join(WIKI_PEOPLE_DIR, filename)
        result = process_file(filepath, dry_run=dry_run)
        if result:
            modified += 1
        else:
            # Check if it was skipped because it already has frontmatter
            with open(filepath, "r", encoding="utf-8") as f:
                content = f.read()
            if has_frontmatter(content):
                skipped += 1
            else:
                warnings += 1

    print(f"\nSummary:")
    print(f"  Modified: {modified}")
    print(f"  Already had frontmatter: {skipped}")
    print(f"  Warnings (no heading): {warnings}")

if __name__ == "__main__":
    main()
