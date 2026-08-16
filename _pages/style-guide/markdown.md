---
layout: page
title: Markdown
---

# Markdown

This page demonstrates the core Markdown syntax supported by the portfolio.

---

## Unordered Lists

- Rust
- TypeScript
- Python
- Zig

Nested

- Programming
    - Systems
    - Backend
    - Frontend

Deeply Nested

- Level One
    - Level Two
        - Level Three
            - Level Four

---

## Ordered Lists

1. Learn
2. Practice
3. Build
4. Repeat

Nested

1. Languages
    1. Rust
    2. Zig
2. Frameworks
    1. Jekyll
    2. Astro

---

## Mixed Lists

1. First

    - Child
    - Child

2. Second

    1. Nested Ordered
    2. Nested Ordered

---

## Task Lists

- [x] Typography
- [x] Markdown
- [x] Code
- [ ] Tables
- [ ] Media
- [ ] Components

---

## Definition Lists

Rust
: Memory-safe systems programming language.

Jekyll
: Static site generator.

Catppuccin
: Pastel colour palette.

---

## Footnotes

This sentence has a footnote.[^1]

Another footnote appears here.[^note]

[^1]: Simple footnote.

[^note]:
    Multi-line footnote.

    Second paragraph.

---

## Reference-style Links

Markdown Guide was written by [Matt Cone][author].

Visit the [Markdown Guide][guide].

[author]: https://www.markdownguide.org
[guide]: https://www.markdownguide.org

---

## Automatic Links

<https://www.rust-lang.org>

<https://jekyllrb.com>

<example@example.com>

---

## Heading IDs

### Installation {#installation}

### Configuration {#configuration}

### Deployment {#deployment}

Jump to the [Configuration](#configuration) section.

---

## Escaping Characters

\*Not italic\*

\# Not a heading

\`Not code\`

\[Literal brackets\]

\\ Backslash

---

## Details

<details markdown="1">
<summary>Expandable Section</summary>

This content should be hidden until expanded.

It contains **Markdown**, `inline code` and lists.

- Item One
- Item Two

</details>

<details markdown="1">
<summary>Installation</summary>

Install the project dependencies.

```bash
bundle install
```

</details>

<details markdown="1">
<summary>Project Structure</summary>

```
.
├── _config.yml
├── _layouts/
├── _includes/
├── _plugins/
├── assets/
└── _pages/
```

</details>

<details markdown="1">
<summary>Supported Features</summary>

- Task Lists
- Footnotes
- Definition Lists
- Mathematics
- Syntax Highlighting
- Custom Markdown Plugins

</details>

---

## Raw HTML

<div>

This HTML block should render correctly.

<strong>Bold HTML</strong>

<em>Italic HTML</em>

</div>

Inline HTML works inside a sentence using <mark>mark</mark>, <sup>sup</sup> and <sub>sub</sub>.

---

## Comments

<!-- This comment should not be rendered. -->

This text should appear normally.

---
