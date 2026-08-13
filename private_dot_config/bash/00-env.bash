# User binaries
case ":$PATH:" in
    *":$HOME/.local/bin:"*) ;;
    *) export PATH="$HOME/.local/bin:$PATH" ;;
esac

export PYTHONNOUSERSITE=1
export NVM_DIR="$HOME/.nvm"

# Proxy ENV
export PROXY_USER="tzhang292"
export PROXY_PASS="787c6b5f7dbfb15bbba15486a0306098b2a4"
export PROXY_HOST='127.0.0.1'
export PROXY_PORT='50800'
