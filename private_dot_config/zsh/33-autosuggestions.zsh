# ~/.config/zsh/33-autosuggestions.zsh

# Default fg=8 is too dark to read; 250 is a light grey from the 256-color palette.
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=250'

[[ -r "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] &&
    source "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
