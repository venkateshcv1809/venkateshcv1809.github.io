---
layout: content
title: Personal Portfolio
description: Personal website and engineering log built with Jekyll, custom automation, and GitHub Actions.
icons: emoji-sparkles
---

:icon-globe: [Portfolio][url] \| :icon-github: [Source Code][repo] \| :icon-palette: [Style Guide][style-guide]

[url]: https://venkateshcv1809.github.io/
[repo]: https://github.com/venkateshcv1809/venkateshcv1809.github.io/
[style-guide]: https://venkateshcv1809.github.io/style-guide/

> A self-owned, zero dependency personal site built with Jekyll, GitHub Pages, and a custom Markdown design system, engineered for fast, friction-free publishing.

## Platform Requirements

I wanted an independent personal space to document low level experiments and write about systems programming without platform lock-in, algorithms, or complex CMS overhead.

My main constraint was simplicity: a pure Markdown pipeline that works seamlessly anywhere and pairs well with local CLI tools and AI workflows. Discovering that GitHub Pages natively supports Jekyll made it an easy choice: write Markdown, push to Git, and deploy automatically.

## Stack & Design System

Instead of adding JavaScript build chains or heavy framework dependencies, I chose Jekyll for a clean, deterministic build pipeline.

**Core Choices:**
- **Zero-runtime overhead:** Static HTML served directly via GitHub Pages.
- **Pure Markdown workflow:** No web editors or CMS layers.
- **Custom UI & Style Guide:** Built a tailored layout and a dedicated [Markdown Style Guide][style-guide] to enforce consistent typography, callouts, and code styling across all pages.

## Technical Challenges

- **Collection Architecture:** Customizing Jekyll collections and permalink generation so posts and projects behave like first class content types without a CMS.
- **Custom Markdown Pipeline:** Extending the default rendering with custom plugins for emoji, icons, table wrapping, sub/sup formatting, and image related behavior while keeping the site static and lightweight.
- **Search & Navigation UX:** Designing the collection pages to support list browsing, pagination, and filtering without introducing a JS framework or heavy client side dependencies.
- **Social & Metadata Consistency:** Keeping page metadata, Open Graph tags, and fallback images coherent across content types with a minimal static site setup.

## Takeaways

Building a minimalist site requires constant discipline:

> *"Do I actually need another plugin, or can I solve this with a few lines of clean code?"*

**Shipping Over Perfection**

The site doesn't need to be perfect on day one. Moving forward incrementally beats stalling in pursuit of perfection.
