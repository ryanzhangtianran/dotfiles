# ~/.config/zsh/01-completion.zsh

[[ -d "$HOMEBREW_PREFIX/share/zsh-completions" ]] && fpath=("$HOMEBREW_PREFIX/share/zsh-completions" $fpath)
autoload -Uz compinit && compinit

command -v carapace >/dev/null && source <(carapace _carapace zsh)
