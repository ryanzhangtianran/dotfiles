# Ubuntu only loads bash-completion for login shells (/etc/profile.d),
# so terminal windows (non-login shells) never got it. Load it here once.
if [[ -z "${BASH_COMPLETION_VERSINFO-}" && -r /usr/share/bash-completion/bash_completion ]] &&
    ! shopt -oq posix; then
    source /usr/share/bash-completion/bash_completion
fi
