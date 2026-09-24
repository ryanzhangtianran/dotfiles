if command -v fzf >/dev/null 2>&1; then
    if fzf --bash >/dev/null 2>&1; then
        eval "$(fzf --bash)"
    else
        # Ubuntu 22.04 packages an older fzf without the --bash flag.
        [[ -r /usr/share/doc/fzf/examples/completion.bash ]] &&
            source /usr/share/doc/fzf/examples/completion.bash
        [[ -r /usr/share/doc/fzf/examples/key-bindings.bash ]] &&
            source /usr/share/doc/fzf/examples/key-bindings.bash
    fi
fi
