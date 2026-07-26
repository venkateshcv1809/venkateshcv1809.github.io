---
layout: default
title: Plugins
permalink: /style-guide/plugins/
---

# Plugins

This page demonstrates the custom Markdown extensions supported by the portfolio.

---

## Philosophy

These plugins extend Markdown while keeping the authoring experience simple.

They are processed before Markdown is rendered and therefore work naturally inside headings, paragraphs, lists, tables and blockquotes.

---

# Emoji

## Basic

Markdown

```text
:emoji-smile:
```

Output

:emoji-smile:

---

## Inline

Markdown

```text
Building :emoji-fire: engineering systems.
```

Output

Building :emoji-fire: engineering systems.

---

## Heading

Markdown

```text
# :emoji-sparkles: Sentinel Genesis
```

Output

# :emoji-sparkles: Sentinel Genesis

---

## Lists

Markdown

```text
- :emoji-check-mark: Markdown First
- :emoji-fire: Developer Focused
- :emoji-sparkles: Fast
```

Output

- :emoji-check-mark: Markdown First
- :emoji-fire: Developer Focused
- :emoji-sparkles: Fast

---

# Icons

## Basic

Markdown

```text
:icon-github:
```

Output

:icon-github:

---

## Inline

Markdown

```text
:icon-github: Repository
```

Output

:icon-github: Repository

---

## Heading

Markdown

```text
# :icon-terminal: Terminal IDE
```

Output

# :icon-terminal: Terminal IDE

---

## Lists

Markdown

```text
- :icon-github: GitHub
- :icon-terminal: Terminal
- :icon-code-slash: Source Code
- :icon-file-earmark-code: Documentation
```

Output

- :icon-github: GitHub
- :icon-terminal: Terminal
- :icon-code-slash: Source Code
- :icon-file-earmark-code: Documentation

---

## Multiple Icons

Markdown

```text
:icon-github:
:icon-git:
:icon-terminal:
:icon-cpu:
:icon-code-slash:
```

Output

:icon-github:
:icon-git:
:icon-terminal:
:icon-cpu:
:icon-code-slash:

---

# Mixed

Markdown

```text
# :icon-rocket: Sentinel Genesis

An autonomous SDLC powered by local AI :emoji-smile:
```

Output

# :icon-rocket: Sentinel Genesis

An autonomous SDLC powered by local AI :emoji-smile:

---

# Tables

| Feature | Example |
|---------|---------|
| Emoji | :emoji-smile: |
| Icon | :icon-github: |
| Mixed | :icon-terminal: :emoji-fire: |

---

# Blockquotes

> :emoji-fire: Performance matters.

> :icon-terminal: Documentation first.

---

# Paragraph

The portfolio extends Markdown only where native Markdown lacks functionality. Animated emojis such as :emoji-smile:, :emoji-fire:, and :emoji-sparkles: improve readability, while inline SVG icons like :icon-github:, :icon-terminal:, :icon-code-slash:, and :icon-file-earmark-code: integrate naturally into technical documentation.

---

# Protected Code

Markdown

````text
:emoji-fire:
:icon-github:
H~2~O
x^2^