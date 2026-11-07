---
layout: content
title: Polyglot Rosetta
description: A catalog and evaluation engine for learning programming concepts across Go, Python, Rust, TypeScript, and Zig.
icons: emoji-boomerang
---

:icon-github: [Source Code][repo] \| :icon-file-lines: [Documentation][docs]

[repo]: https://github.com/venkateshcv1809/polyglot-rosetta
[docs]: /polyglot-rosetta/

> One exercise catalog and evaluation engine for studying a concept, implementing it across languages, and practicing the reasoning behind each solution.

## The Problem

Polyglot Rosetta started as a way to study data structures, algorithms, and design patterns outside the JavaScript web work I had done for years. I could explore ideas, but I wanted a more deliberate way to have a learning workflow with more continuity than isolated challenges: understand a concept, study a worked implementation, then return to the same idea and solve it independently. Comparing that solution across languages would also help me build familiarity with both the concepts and the syntax.

## Architecture & Design Choices

Each exercise keeps its learning material and evaluation cases together. `PROBLEM.md` defines the task and constraints; `README.md` explains the approach, examples, and complexity; language-specific files contain reference solutions. JSON cases describe expected behavior, with public cases for practice and hidden cases for complete evaluation.

The Go engine powers the native `prosetta` CLI and a WebAssembly interface for browser hosts. The CLI uses installed toolchains, while browser hosts supply compilation and execution capabilities to the WASM core.

**Core Decisions:**

- **One evaluation contract:** harness generation, output interpretation, result comparison, and aggregation live in the shared core.
- **Build once, run each case separately:** compiled solutions are reused, while each case gets a fresh execution environment so a crash or timeout does not prevent later cases from running.
- **Keep content portable:** exercises can be packaged and synchronized independently of engine releases, allowing different tools to consume the same catalog.
- **Support structured inputs:** JSON values can represent nested data instead of limiting exercises to a fixed function signature.

## Learning Across Languages

My goals for each language are:

- **TypeScript - web:** apply my existing experience to web applications.
- **Python - data:** process large datasets and automate workflows.
- **Go - cloud and concurrency:** build services and DevOps tools.
- **Rust - systems:** explore memory safety and performance.
- **Zig - low-level:** explore embedded development and explicit control.

Implementing the same concept in all five gives me a way to practice the reasoning repeatedly and see how the code changes with each language.

## Technical Challenges

The main challenge is applying one evaluation contract to languages that represent inputs and solutions differently. Each harness must prepare the input, capture a result, and report useful failures while keeping the learner's code recognizable.

The engine also has to work across different hosts. A native process can launch compilers directly; a browser cannot. The WebAssembly core delegates toolchain preparation and process execution to the host while keeping case selection and evaluation rules in one place. The CLI, browser SDK, and editor plugin can then share the same evaluation behavior.

## Takeaways

Authoring an exercise is a test of my understanding too. If I cannot state the constraints, explain why a solution works, and write cases that expose mistakes, I still have more to learn before I can say I understand the concept.
