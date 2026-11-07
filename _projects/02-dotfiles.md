---
layout: content
title: Dotfiles
description: A stow based development environment, installed from one bootstrap script.
icons: emoji-gear
---

:icon-github: [Source Code][repo]

[repo]: https://github.com/venkateshcv1809/dotfiles/

> A stow based development environment built with one bootstrap script, mise, and Sheldon.

## The Problem

Configuration had accumulated across machines as one-off files and aliases. Switching between a personal laptop and a work machine meant Neovim plugins, shell aliases, and CLI tools drifted out of sync. Setting up a new host meant reconstructing the workflow from notes instead of applying a known tree.

I needed one repository that could install the environment I actually use, keep personal paths out of git, and stay understandable enough to change without a rewrite.

## Architecture & Design Choices

Each top level directory is a [GNU Stow](https://www.gnu.org/software/stow/) package. `bootstrap.sh` is the only installer. Required packages are `mise`, `sheldon`, `shell`, and `bash`; the rest are optional.

Stow packages
: One directory per concern, symlinked into `$HOME` in managed mode.

mise
: Language runtimes and CLI tools, with versions pinned beside the package that needs them.

Sheldon
: Shell plugins, including fragments other packages drop in.

Shared POSIX layer
: `shell/` holds `env.sh` and `aliases.sh`. Bash and zsh source those, activate mise, then load Sheldon so aliases and fzf see tools on PATH.

### Core Decisions

One installer
: Managed mode keeps `~/dotfiles` and symlinks.
: standalone mode copies files and removes the temporary clone.
: `--all` skips prompts.
: `--replace` moves conflicts to `.bak-<timestamp>`.

Secrets stay local
: Keys, `.env` files, and Neovim `env.lua` are gitignored.
: `env-example.lua` documents the public shape.

One font path
: The `fonts` package vendors MesloLGS Nerd Font and a fontconfig rule for `monospace`. Bootstrap only runs `fc-cache`.

XDG defaults
: Config, data, and state homes are set once so history, plugins, and tool configs do not scatter through `$HOME`.

## Technical Details

Bootstrap detects apt, pacman, dnf, or Homebrew for prerequisites such as git, curl, and Stow. Toolchains and CLIs come from mise after that, so the same versions follow the checkout rather than whatever the distro last packaged.

Interactive shells use `mise activate`. Non interactive callers that source `env.sh` get shims only. That split keeps scripts working without loading a full interactive rc.

Neovim is a Stow package like the rest: Lazy plugins, language servers, treesitter, and session behavior live in the tree. Machine specific vault paths never ship.

## Takeaways

A usable dotfiles tree is a constraint problem, not a catalog of every tool:

- **Install what the daily workflow needs:** optional packages exist so a machine can skip languages or tmux without forking the repo.
- **Order matters as much as files:** aliases and fzf must load after mise, or `fd` and `eza` never appear.
- **Leave personal data beside the repo:** ignored `env.lua` is enough for vault paths; the public tree stays cloneable.

**One Tree, Many Machines**

The value is a checkout I can apply again, not a unique snowflake on each host.
