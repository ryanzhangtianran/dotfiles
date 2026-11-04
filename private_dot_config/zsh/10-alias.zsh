# ~/.config/zsh/10-alias.zsh

alias pip='python -m pip'
alias nvitop="uvx nvitop"

if command -v eza >/dev/null; then
    alias ls='eza'
    alias ll='eza -l --git'
    alias la='eza -la --git'
fi

if command -v bat >/dev/null; then
    alias cat='bat --paging=never'
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
fi

if command -v nvim >/dev/null; then
    alias vim='nvim'
    alias vi='nvim'
fi

# Type a directory name (e.g. .., ../..) to cd into it.
setopt autocd
