---
layout: default
title: Components
permalink: /style-guide/components/
---

# Components

These are higher-level content blocks commonly used in technical articles.

---

# Terminal Session

```console
$ pwd
/home/venkatesh/projects/portfolio

$ bundle exec jekyll serve

Configuration file: _config.yml

Server address: http://127.0.0.1:4000/

Server running...
```

---

# File Tree

```text
portfolio/
├── _layouts
│   ├── default.html
│   └── post.html
├── _sass
│   ├── core
│   ├── layout
│   ├── components
│   └── theme
├── assets
├── blog
└── index.md
```

---

# Git Diff

```diff
+ Added typography tokens
+ Added syntax highlighting
+ Added table styles

- Removed legacy variables
```

---

# Logs

```text
INFO  Loading configuration...

INFO  Parsing markdown...

WARN  Missing alt text on image.

ERROR Failed to locate assets/logo.svg
```

---

# Configuration

```yaml
theme:
  name: catppuccin
  mode: mocha

code:
  line_numbers: true

markdown:
  footnotes: true
```

---

# Architecture

```text
Markdown

↓

Jekyll

↓

Liquid

↓

HTML

↓

SCSS

↓

Portfolio
```

---

# Developer Workflow

```text
Read

↓

Understand

↓

Practice

↓

Build

↓

Document

↓

Teach
```

---

# Keyboard Shortcuts

| Action | Shortcut |
|---------|----------|
| Command Palette | <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd> |
| Save | <kbd>Ctrl</kbd> + <kbd>S</kbd> |
| Find | <kbd>Ctrl</kbd> + <kbd>F</kbd> |
| Replace | <kbd>Ctrl</kbd> + <kbd>H</kbd> |

---

# Checklist

- [x] Typography
- [x] Markdown
- [x] Code
- [x] Tables
- [x] Images
- [ ] Blog
- [ ] Projects
- [ ] Resume

---

# Mixed Content

> Documentation should be **easy to read**, include `examples`, and provide practical guidance.

Example:

```rust
fn main() {
    println!("Hello Portfolio");
}
```

---
