---
layout: page
title: Tables
---

# Tables

This page validates table rendering, alignment, overflow, spacing and Markdown support inside table cells.

---

## Basic Table

| Language | Type | Memory Safe |
|----------|------|-------------|
| Rust | Systems | Yes |
| Zig | Systems | Manual |
| Python | Scripting | GC |
| TypeScript | Web | GC |

---

## Alignment

| Left | Center | Right |
|:-----|:------:|------:|
| One | Two | Three |
| Alpha | Beta | Gamma |

---

## Markdown Inside

| Item | Example |
|------|---------|
| Bold | **Bold** |
| Italic | *Italic* |
| Code | `println!()` |
| Link | [Rust](https://www.rust-lang.org) |
| Strikethrough | ~~Deprecated~~ |
| Highlight | ==Important== |
| Subscript | H~2~O |
| Superscript | x^2^ |

---

## Long Content

| Feature | Description |
|----------|-------------|
| Typography | Tests wrapping inside cells with enough text to span multiple lines and verify vertical alignment. |
| Code | Ensures inline code renders correctly inside table cells. |
| Responsive Layout | This intentionally long description verifies that paragraphs wrap correctly without affecting the overall table layout or alignment. |

---

## Empty Cells

| Feature | Supported | Notes |
|----------|-----------|-------|
| Rust | Yes | |
| Zig | | Manual memory management |
| Python | Yes | |
| TypeScript | | |

---

## Numeric Alignment

| Decimal | Hex | Binary |
|--------:|----:|-------:|
| 0 | 0x00 | 00000000 |
| 16 | 0x10 | 00010000 |
| 255 | 0xFF | 11111111 |
| 1024 | 0x400 | 10000000000 |

---

## Unicode

| Language | Native Script |
|----------|---------------|
| Tamil | தமிழ் |
| Japanese | 日本語 |
| Korean | 한국어 |
| Greek | Ελληνικά |

---

## Overflow

| C1 | C2 | C3 | C4 | C5 | C6 | C7 | C8 | C9 | C10 |
|----|----|----|----|----|----|----|----|----|-----|
| A | B | C | D | E | F | G | H | I | J |

---

## Wide Table

| C1 | C2 | C3 | C4 | C5 | C6 | C7 | C8 | C9 | C10 | C11 | C12 |
|----|----|----|----|----|----|----|----|----|-----|-----|-----|
| A | B | C | D | E | F | G | H | I | J | K | L |

---

## Long Unbreakable Content

| Type | Example |
|------|---------|
| URL | https://this-is-a-very-long-url-that-should-test-overflow-behaviour-without-any-natural-break-points.example.com/path/to/resource/index.html |
| Identifier | extremely_long_variable_name_that_should_not_wrap_unless_the_table_explicitly_allows_it |

---

## Comparison

| Feature | Supported |
|----------|-----------|
| Footnotes | ✅ |
| Definition Lists | ✅ |
| Tables | ✅ |
| Inline Code | ✅ |
| Unicode | ✅ |
| Overflow | ✅ |
| Responsive | ✅ |
| Images | 🚧 |

---

## Escaping

| Literal | Output |
|---------|--------|
| \| | Pipe Character |
| \* | Asterisk |
| \# | Hash |
| \\ | Backslash |

---
