# Repository Guidelines

These guidelines help contributors work effectively in this dotfiles repository. Keep changes focused, reproducible, and cross‑platform where possible.

## Project Structure & Module Organization
- `config/`: App configs (fish, nvim, tmux, wezterm, alacritty, yabai, yazi, ghostty, zed, etc.).
- `scripts/`: Bootstrap helpers (`package-manager.sh`, `brew.sh`, `set-default-shell.sh`, `install-rust.sh`).
- `bin/`: Personal utilities added to `PATH`.
- `Brewfile`, `Brewfile-macOS`: Homebrew bundles; macOS extras live in `Brewfile-macOS`.
- `install.sh`: End‑to‑end bootstrap; also runs `rcm` to link dotfiles.
- `git_template/`: Git hooks (Conventional Commits via `cog`, optional `git-secrets`).
- `_typos.toml`: Spelling linter configuration for CI.

## Build, Test, and Development Commands
- Bootstrap: `./install.sh` — installs Homebrew, bundles packages, sets fish as default, installs Rust, then links dotfiles.
- Link dotfiles: `env RCRC=$HOME/dotfiles/rcrc rcup` — first‑time install; later updates use `rcup`.
- Homebrew: `brew bundle --file=./Brewfile` and (on macOS) `brew bundle --file=./Brewfile-macOS`.
- Commit checks: `cog check` — verify Conventional Commits locally.
- Spelling: `typos` — checks spelling per `_typos.toml`.

## Coding Style & Naming Conventions
- Shell: bash scripts with `set -e` preferred; keep scripts idempotent.
- Layout: keep app configs under `config/<tool>/`; name scripts in `kebab-case`.
- Files: avoid machine‑specific values in tracked files; use `*.local` overrides (e.g., `gitconfig.local`).

## Testing Guidelines
- Validate changes by running the affected app (e.g., fish, tmux, nvim) and `rcup` to ensure links resolve.
- Run local linters: `cog check`, `typos`.
- Provide minimal repro steps in PRs (e.g., which config file, expected behavior, OS).

## Commit & Pull Request Guidelines
- Conventional Commits required (enforced by hooks/CI). Examples:
  - `feat(fish): add fzf keybindings`
  - `fix(nvim): resolve LSP path issue`
  - `chore(brew): bump wezterm`
- Custom types present: `hotfix`, `release`. Changelog managed via `cog`.
- PRs: include a concise description, OS/shell impacted, before/after details or screenshots, linked issues, and update docs if behavior changes.

## Security & Configuration Tips
- Never commit secrets; prefer environment variables or `.local` files ignored by Git (see `gitignore.local`).
- macOS‑only changes belong in `Brewfile-macOS` or platform‑guarded config blocks.
- Optional: enable repo hooks everywhere with `git config --global init.templateDir "$HOME/dotfiles/git_template"`.

