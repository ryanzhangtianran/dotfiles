# ~/.config/bash/30-conda.bash

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
for conda_root in "$HOME/Miniforge" "$HOME/miniforge3" "$HOME/miniforge"; do

    [[ -x "$conda_root/bin/conda" ]] || continue

    if __conda_setup="$("$conda_root/bin/conda" shell.bash hook 2>/dev/null)"; then
        eval "$__conda_setup"
    elif [[ -f "$conda_root/etc/profile.d/conda.sh" ]]; then
        source "$conda_root/etc/profile.d/conda.sh"
    else
        export PATH="$conda_root/bin:$PATH"
    fi

    unset __conda_setup
    break

done
# <<< conda initialize <<<
