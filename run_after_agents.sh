#!/usr/bin/env bash
# Claude Code and Codex via their official user-level installers (no sudo,
# into ~/.local/bin). Runs on every apply but only installs what is missing:
# both update themselves, and a failed install (network) is retried next apply.
set -Euo pipefail

# With ~/.local/bin already on PATH the Codex installer leaves shell
# profiles (chezmoi-managed .bashrc) alone.
export PATH="$HOME/.local/bin:$PATH"

if ! command -v claude >/dev/null 2>&1; then
    echo '[dotfiles] Installing Claude Code.'
    curl -fsSL https://claude.ai/install.sh | bash ||
        echo '[dotfiles] Claude Code install failed (try `proxy on`); retrying on next apply.'
fi

if ! command -v codex >/dev/null 2>&1; then
    echo '[dotfiles] Installing Codex.'
    curl -fsSL https://chatgpt.com/codex/install.sh | CODEX_NON_INTERACTIVE=1 sh ||
        echo '[dotfiles] Codex install failed (try `proxy on`); retrying on next apply.'
fi
