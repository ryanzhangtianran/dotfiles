# ~/.config/bash/90-starship.bash

if command -v starship >/dev/null 2>&1; then
    eval "$(starship init bash)"
fi
