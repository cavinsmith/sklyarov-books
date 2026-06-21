#!/usr/bin/env python3
"""Extract text from all unique books and save to instruments/extracted/."""

import sys
import os
import json
import re
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from extract import extract_file

REPO_ROOT = Path(__file__).parent.parent
EXTRACTED_DIR = Path(__file__).parent / 'extracted'
EXTRACTED_DIR.mkdir(exist_ok=True)

# Define unique books with their source files (prefer fb2 over epub for these)
UNIQUE_BOOKS = [
    ("01-mif-o-potope", "Миф о Потопе", ["Миф о Потопе_ расчеты и реальность.fb2"]),
    ("02-olyantaytambo", "Ольянтайтамбо", ["Ольянтайтамбо - свидетель Потопа.fb2"]),
    ("03-sudba-faetona", "Судьба Фаэтона", ["Ждет ли Землю судьба Фаэтона .fb2", "Ждет Ли Землю Судьба Фаэтона.epub"]),
    ("04-bitva-za-urozhay", "Битва за урожай", ["Битва За Урожай.fb2", "Наследние Пьяных Богов.fb2"]),
    ("05-rodina-bogov", "Родина Богов", ["Какова Ты - Родина Богов.fb2"]),
    ("06-vavilonskaya-bashnya", "Вавилонская башня", ["Вавилонская башня - рекордсмен долгостроя.fb2"]),
    ("07-radio-uglerodnoe-datirovanie", "Радиоуглеродное датирование", ["Чего изволите-с.. Меню радиоуглеродного датирования и дендрохронологии.fb2"]),
    ("08-istoriya-zemli-bez-kamenno", "История Земли без каменноугольного периода", ["История Земли без Каменноугольного периода .fb2"]),
    ("09-geohronologiya", "Геохронология", ["Немного о текущей ситуации вокруг геохронологии.epub"]),
    ("10-kompyuter-drevnego-kitaya", "Компьютер Древнего Китая", ["Компьютер Древнего Китая.epub"]),
    ("11-dragonografiya", "Драконография", ["Введение В Драконографию.fb2"]),
    ("12-tsivilizaciya-bogov-egipta", "Цивилизация богов Египта", ["Цивилизация древних богов Египта .fb2"]),
    ("13-meksika-bez-krivyh-zerkal", "Древняя Мексика", ["Древняя Мексика без кривых зеркал .fb2"]),
    ("14-obitaemyy-ostrov", "Обитаемый остров Земля", ["Обитаемый остров Земля.fb2"]),
    ("15-peru-i-boliviya", "Перу и Боливия", ["Перу И Боливия За Долго До Инков.fb2"]),
    ("16-sensacionnaya-istoriya", "Сенсационная история Земли", ["Сенсационная история Земли.fb2"]),
    ("17-piramidy", "Пирамиды", ["Пирамиды_ загадки строительства и назначения.fb2"]),
    ("18-drevnie-bogi", "Древние боги", ["Древние Боги - Кто Они.fb2"]),
    ("19-zemlya-vaala", "Земля Ваала", ["Земля Ваала.fb2"]),
    ("20-strana-voshozhdeniya", "Страна восходящего солнца", ["Страна восходящего солнца. Загадки древней истории.fb2"]),
    ("21-geneticheskiy-kod", "Генетический код человечества", ["Генетический Код Человечества.epub"]),
    ("22-metally", "Металлы — дар небесных богов", ["Металлы - Дар Небесных Богов.fb2"]),
    ("23-naska", "Наска", ["Наска. Гигантские рисунки на полях.fb2"]),
    ("24-opasnoe-nasledie", "Опасное наследие богов", ["Опасное Наследние Богов.fb2"]),
    ("25-kovcheg-zaveta", "Ковчег Завета", ["По Следам Ковчега Завета.fb2"]),
    ("26-siriyskie-perekrestki", "Сирийские перекрестки", ["Сирийские перекрестки цивилизации.fb2"]),
    ("27-sozdanie-tsivilizaciy", "Создание древних цивилизаций", ["Создание древних цивилизаций (LAH.RU).pdf"]),
    ("28-fizika-duha", "Основы физики духа", ["Основы физики духа.fb2", "Приложения к трактату «Основы физики духа».fb2"]),
    ("29-sprint-po-kairu", "Спринт по Каиру", ["Спринт по Каиру.mht"]),
    ("30-yahve-protiv-baala", "Яхве против Баала", ["Яхве Против Баала - Хроника Переворота.fb2"]),
]

def clean_text(text):
    """Clean extracted text."""
    if not text:
        return ""
    # Remove excessive whitespace
    text = re.sub(r'\n{3,}', '\n\n', text)
    text = re.sub(r'[ \t]+', ' ', text)
    return text.strip()

def main():
    results = []

    for slug, title, source_files in UNIQUE_BOOKS:
        print(f"\n{'='*60}")
        print(f"Processing: {title} ({slug})")

        extracted = None
        used_file = None

        for src in source_files:
            filepath = REPO_ROOT / src
            if not filepath.exists():
                # Try in epub-books
                filepath = REPO_ROOT / 'epub-books' / src
            if not filepath.exists():
                print(f"  File not found: {src}")
                continue

            print(f"  Trying: {filepath.name}")
            try:
                result = extract_file(str(filepath))
                text = clean_text(result.get('text', ''))
                if text and len(text) > 100:
                    extracted = {
                        'slug': slug,
                        'title': result.get('title', title),
                        'author': result.get('author', 'А. Скляров'),
                        'annotation': result.get('annotation', ''),
                        'text': text,
                        'source_file': str(filepath.relative_to(REPO_ROOT)),
                        'text_length': len(text),
                    }
                    used_file = filepath
                    break
                else:
                    print(f"  Too short ({len(text)} chars), trying next...")
            except Exception as e:
                print(f"  Error: {e}")

        if extracted:
            # Save extracted text
            out_path = EXTRACTED_DIR / f"{slug}.txt"
            with open(out_path, 'w', encoding='utf-8') as f:
                f.write(extracted['text'])

            # Save metadata
            meta_path = EXTRACTED_DIR / f"{slug}.json"
            meta = {k: v for k, v in extracted.items() if k != 'text'}
            with open(meta_path, 'w', encoding='utf-8') as f:
                json.dump(meta, f, ensure_ascii=False, indent=2)

            print(f"  OK: {len(extracted['text'])} chars -> {out_path.name}")
            results.append({'slug': slug, 'title': title, 'chars': len(extracted['text']), 'status': 'ok'})
        else:
            print(f"  FAILED: Could not extract text")
            results.append({'slug': slug, 'title': title, 'chars': 0, 'status': 'failed'})

    # Summary
    print(f"\n{'='*60}")
    print("EXTRACTION SUMMARY")
    print(f"{'='*60}")
    ok = sum(1 for r in results if r['status'] == 'ok')
    total_chars = sum(r['chars'] for r in results)
    print(f"Successfully extracted: {ok}/{len(results)} books")
    print(f"Total characters: {total_chars:,}")
    for r in results:
        status = "✓" if r['status'] == 'ok' else "✗"
        print(f"  {status} {r['title']}: {r['chars']:,} chars")

if __name__ == '__main__':
    main()
