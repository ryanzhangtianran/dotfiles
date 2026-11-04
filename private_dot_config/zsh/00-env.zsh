# ~/.config/zsh/00-env.zsh

for brew in /opt/homebrew/bin/brew /usr/local/bin/brew; do
    [[ -x "$brew" ]] && eval "$("$brew" shellenv zsh)" && break
done
unset brew

typeset -U path fpath
# Homebrew Ruby 3.3 (github-pages does not support Ruby 4)
path=(
    "$HOME/.local/bin"
    /opt/homebrew/opt/ruby@3.3/bin
    /opt/homebrew/lib/ruby/gems/3.3.0/bin
    $path
)

export PYTHONNOUSERSITE=1

# git commit, crontab -e, etc.
command -v nvim >/dev/null && export EDITOR=nvim VISUAL=nvim
