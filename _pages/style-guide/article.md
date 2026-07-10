---
layout: default
title: Example Technical Article
permalink: /style-guide/article/
---

# Why I Build Instead of Memorize

One of the biggest lessons I've learned is that knowledge without application fades quickly.

Instead of collecting notes, I prefer building small projects that reinforce concepts through repetition.

---

## Learning Loop

1. Read documentation.
2. Understand the idea.
3. Build something.
4. Document the outcome.
5. Repeat.

---

## Example

Binary search has a complexity of O(log~2~ n).

A HashMap lookup is generally O(1).

Memory addresses on x^64^ systems are typically 64 bits.

---

## Rust Example

```rust
fn binary_search(values: &[i32], target: i32) -> Option<usize> {
    let mut low = 0;
    let mut high = values.len();

    while low < high {
        let mid = (low + high) / 2;

        match values[mid].cmp(&target) {
            std::cmp::Ordering::Less => low = mid + 1,
            std::cmp::Ordering::Greater => high = mid,
            std::cmp::Ordering::Equal => return Some(mid),
        }
    }

    None
}
```

---

## Terminal

```console
$ cargo test

running 8 tests

test result: ok
```

---

## Comparison

| Method | Time | Space |
|---------|------|-------|
| Linear Search | O(n) | O(1) |
| Binary Search | O(log n) | O(1) |

---

## Quote

> Simplicity is achieved not when there is nothing more to add,
> but when there is nothing left to remove.

---

## Final Thoughts

Good documentation is part of the software.

It reduces onboarding time.

It preserves knowledge.

It becomes a force multiplier for future work.

---
