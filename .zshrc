# Enable persistent history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

autoload -Uz compinit
compinit

#. "$HOME/.cargo/env"

zstyle :omz:plugins:iterm2 shell-integration yes
#ZSH_THEME="kphoen"
#ZSH_THEME="robbyrussell"
ZSH_THEME=""

function is-macos() {
	[[ $OSTYPE == darwin* ]]
}

# Antidote plugins
source ~/.antidote/antidote.zsh
antidote load

# Override any prompt/theme loaded by antidote
# Left prompt
PROMPT='%F{blue}%~%f %(?.%F{green}.%F{red})%#%f '

autoload -Uz add-zsh-hook
zmodload zsh/datetime

add-zsh-hook -d preexec _my_timer_preexec 2>/dev/null
add-zsh-hook -d precmd _my_timer_precmd 2>/dev/null

typeset -g __cmd_start_time=0
typeset -g __cmd_runtime=""

_my_timer_preexec() {
    __cmd_start_time=$EPOCHREALTIME
}

_my_timer_precmd() {
    local exit_status=$?
    local elapsed

    if (( __cmd_start_time > 0 )); then
        elapsed=$(( EPOCHREALTIME - __cmd_start_time ))
        if (( elapsed >= 3 )); then
            if (( elapsed >= 60 )); then
                __cmd_runtime="$(( int(elapsed / 60) ))m $(( int(elapsed % 60) ))s"
            else
		__cmd_runtime="$(LC_NUMERIC=C printf '%.1fs' "$elapsed")"
            fi
        else
            __cmd_runtime=""
        fi
    fi
    __cmd_start_time=0
    if [[ -n "$__cmd_runtime" ]]; then
        RPROMPT="%F{yellow}${__cmd_runtime}%f"
    else
        RPROMPT="%F{244}%*%f"
    fi
    return $exit_status

}

add-zsh-hook preexec _my_timer_preexec
add-zsh-hook precmd _my_timer_precmd



source ~/.alias.bash


# Created by `pipx` on 2026-05-27 21:25:41
export PATH="$PATH:$HOME/.local/bin"
