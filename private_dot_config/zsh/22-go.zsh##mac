# ~/.config/zsh/22-go.zsh

command -v go >/dev/null || return

# Global tools (go install outside a Go repo); default GOPATH is ~/go.
path+=("$HOME/go/bin")

# Inside a git repo with go.mod at its root: GOBIN=<repo>/bin, put first on PATH.
# Only Go repos, so a random clone's bin/ never shadows system commands.
_go_repo_bin() {
    local root
    root=$(git rev-parse --show-toplevel 2>/dev/null)
    [[ -n $root && -f $root/go.mod ]] || root=
    [[ $root == "${_go_repo_root-}" ]] && return

    [[ -n ${_go_repo_root-} ]] && path=(${path:#$_go_repo_root/bin})
    _go_repo_root=$root
    if [[ -n $root ]]; then
        export GOBIN=$root/bin
        path=("$GOBIN" $path)
    else
        unset GOBIN
    fi
}

autoload -Uz add-zsh-hook
add-zsh-hook chpwd _go_repo_bin
_go_repo_bin
