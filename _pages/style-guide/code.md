---
layout: page
title: Code Showcase
---

# Code Showcase

This page validates syntax highlighting, inline code, fenced code blocks,
terminal output, diffs, long lines, Unicode rendering and overflow handling.

---

## Inline Code

Use `cargo build`.

Use `npm install`.

The `Result<T, E>` enum represents success or failure.

Use `Option<T>` when values may be absent.

---

# Rust

```rust
fn fibonacci(n: u32) -> u32 {
    match n {
        0 => 0,
        1 => 1,
        _ => fibonacci(n - 1) + fibonacci(n - 2),
    }
}

fn main() {
    println!("{}", fibonacci(10));
}
```

---

# TypeScript

```ts
interface User {
    id: number;
    name: string;
    active: boolean;
}

const users: User[] = [
    { id: 1, name: "Alice", active: true },
    { id: 2, name: "Bob", active: false },
];

const activeUsers = users.filter(user => user.active);

console.log(activeUsers);
```

---

# Python

```python
from pathlib import Path

def walk(directory: Path):
    for item in directory.iterdir():
        print(item)

if __name__ == "__main__":
    walk(Path("."))
```

---

# Zig

```zig
const std = @import("std");

pub fn main() !void {
    std.debug.print("Hello, Zig!\n", .{});
}
```

---

# Bash

```bash
#!/usr/bin/env bash

set -euo pipefail

for file in *.md; do
    echo "$file"
done
```

---

# JSON

```json
{
    "theme": "catppuccin",
    "language": "en",
    "features": [
        "markdown",
        "syntax-highlighting",
        "responsive"
    ]
}
```

---

# YAML

```yaml
site:
  title: Portfolio
  author: Venkatesh

theme:
  mode: dark
  accent: blue
```

---

# TOML

```toml
title = "Portfolio"

[theme]
name = "catppuccin"
mode = "mocha"
```

---

# HTML

```html
<section class="hero">
    <h1>Hello World</h1>
</section>
```

---

# CSS

```css
.container {
    max-width: 72rem;
    margin-inline: auto;
}
```

---

# SCSS

```scss
.card {
    padding: var(--space-4);
    border-radius: var(--radius-md);
}
```

---

# SQL

```sql
SELECT
    id,
    name,
    created_at
FROM users
WHERE active = TRUE
ORDER BY created_at DESC;
```

---

# XML

```xml
<project>
    <name>Portfolio</name>
</project>
```

---

# Dockerfile

```dockerfile
FROM debian:stable

RUN apt update && apt install -y curl

CMD ["bash"]
```

---

# Diff

```diff
+ Added typography
+ Added tables

- Removed legacy CSS
```

---

# Console

```console
$ cargo build

Compiling portfolio v0.1.0

Finished release target(s) in 1.14s
```

---

# Plain Text

```text
Neovim
Tmux
Catppuccin
Jekyll
```

---

# Long Line

```rust
let extremely_long_variable_name_that_should_force_horizontal_scrolling_because_it_is_intentionally_long_and_should_not_wrap = "Testing horizontal scrolling";
```

---

# Unicode

```text
தமிழ்
日本語
한국어
🚀
λ
π
Ω
```

---
