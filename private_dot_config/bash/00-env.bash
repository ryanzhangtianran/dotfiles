# User binaries. Keep this order in sync with the chezmoi installer script.
for user_bin_dir in "$HOME/.atuin/bin" "$HOME/.local/bin"; do
    case ":$PATH:" in
        *":$user_bin_dir:"*) ;;
        *) export PATH="$user_bin_dir:$PATH" ;;
    esac
done
unset user_bin_dir

export PYTHONNOUSERSITE=1
export NVM_DIR="$HOME/.nvm"

# Proxy ENV
export PROXY_HOST='127.0.0.1'
export PROXY_PORT='50800'
