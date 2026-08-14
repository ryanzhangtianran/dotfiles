# User binaries
case ":$PATH:" in
    *":$HOME/.local/bin:"*) ;;
    *) export PATH="$HOME/.local/bin:$PATH" ;;
esac

export PYTHONNOUSERSITE=1
export NVM_DIR="$HOME/.nvm"

# Proxy ENV
export PROXY_HOST='127.0.0.1'
export PROXY_PORT='50800'
