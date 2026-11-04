#!/usr/bin/env bash
# Runs after packages, so fnm is in ~/.local/bin on every machine.
set -Eeuo pipefail

fnm="$HOME/.local/bin/fnm"
if ! "$fnm" list | grep -q ' v[0-9]'; then
    echo '[dotfiles] Installing the latest Node LTS with fnm.'
    "$fnm" install --lts
fi
