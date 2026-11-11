# Go: modules, toolchains and build cache live in <project>/.go (like .venv), never ~/go.
export GOBIN="$HOME/.local/bin" GOFLAGS=-modcacherw  # -modcacherw: so `rm -rf .go` works
go() {
    local root=$PWD
    while [[ -n $root && ! -f $root/go.mod ]]; do root=${root%/*}; done
    [[ -n $root ]] || root="${TMPDIR:-/tmp}/go-$USER"  # outside a project: throwaway cache
    [[ -f $root/.go/.gitignore ]] || { mkdir -p "$root/.go" && echo '*' >"$root/.go/.gitignore"; }
    GOPATH="$root/.go" GOMODCACHE="$root/.go/mod" GOCACHE="$root/.go/cache" command go "$@"
}
