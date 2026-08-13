# ~/.config/bash/40-nvm.bash

if ! command -v nvm >/dev/null 2>&1; then
    [[ -s "$NVM_DIR/nvm.sh" ]] &&
        source "$NVM_DIR/nvm.sh"

    [[ -s "$NVM_DIR/bash_completion" ]] &&
        source "$NVM_DIR/bash_completion"
fi