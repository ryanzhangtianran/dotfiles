# ~/.config/bash/12-agents.bash

# Claude Code and Codex always leave through the local Xray on 50801,
# whether or not `proxy on` / `px` (PROXY_PORT) is in use.
_agent_proxy() {
    local p='http://127.0.0.1:50801'
    HTTPS_PROXY=$p https_proxy=$p HTTP_PROXY=$p http_proxy=$p ALL_PROXY=$p all_proxy=$p \
        NO_PROXY=localhost,127.0.0.1 no_proxy=localhost,127.0.0.1 \
        command "$@"
}

claude() { _agent_proxy claude "$@"; }
codex() { _agent_proxy codex "$@"; }
