---
layout: content
title: Assets Vault
description: A local-first, zero-dependency static asset browser built for fast development workflows.
icons: emoji-locked
---

:icon-globe: [Demo][url] \| :icon-github: [Source Code][repo]

[url]: https://venkateshcv1809.github.io/assets-vault/
[repo]: https://github.com/venkateshcv1809/assets-vault

> An offline-first catalog system built to eliminate asset search latency.

## The Problem

Managing design assets across projects created constant friction:

- Icons and SVGs ended up scattered across random directories and downloads folders.
- Finding specific assets meant searching multiple library sites or opening files one by one.
- Duplicate downloads were common because existing local assets were hard to locate.

Existing tools required paid subscriptions, internet access, or heavy design software like Figma. I needed a local-first, library-agnostic system tailored to a terminal workflow rather than a design suite.

## Architecture & Design Choices

The project uses a clean three-part architecture to keep data separate from presentation:

- **Vault:** Directory structure containing raw assets without build artifacts or extra metadata.
- **Indexer:** Python script using standard libraries to scan the vault and generate a JSON catalog.
- **Browser:** Vanilla HTML and JavaScript interface that loads the catalog with zero build steps.

**Core Decisions:**
- **Zero-framework UI:** Vanilla JavaScript loading a JSON file for instant local rendering.
- **YAML configuration:** Asset types, categories, and renderers are defined in YAML to allow seamless extensibility.
- **Lazy loading:** Pagination and lazy image rendering keep the interface fast as the collection grows.

## Technical Details

The indexer uses a plugin system so different asset types like icons, fonts, and emoji register their own parsers. This allowed adding new asset categories without modifying core indexing logic. 

Category-based navigation and visual preview filters make it easy to browse the local library for inspiration even without exact search terms.

## Takeaways

Building a custom tool for a specific workflow bottleneck revealed key design principles:

- **Solve local problems first:** Motivation came directly from daily workflow friction rather than chasing new technologies.
- **Strict constraints yield simplicity:** Avoiding frameworks kept the codebase light, debuggable, and completely predictable.
- **Local-first independence:** Removing cloud dependencies means the catalog works offline, stays version-controlled, and never breaks.

**Function Over Features**

The tool exists strictly to streamline a development workflow. Refinement happens only when actual usage demands it.
