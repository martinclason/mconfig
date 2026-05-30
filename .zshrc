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

# Remove hooks before re-adding them when reloading ~/.zshrc
add-zsh-hook -d preexec _my_timer_preexec 2>/dev/null
add-zsh-hook -d precmd  _my_timer_precmd  2>/dev/null

# ── Right-prompt settings ──────────────────────────────────────────────
typeset -gi CMD_RUNTIME_MIN_MS=50        # Do not show runtimes below this
typeset -gi CMD_RUNTIME_MS_UNTIL=5000    # Display as "1234 ms" up to this
typeset -gi CMD_RUNTIME_SECONDS_UNTIL=60 # Display as "8.2 s" below this many seconds
typeset -gi CMD_RUNTIME_SECONDS_DECIMALS=1

typeset -g CMD_RUNTIME_COLOR='yellow'
typeset -g CLOCK_COLOR='244'
typeset -g CLOCK_FORMAT='%D{%H:%M:%S}'
typeset -g RPROMPT_SEPARATOR=' < '

# ── Runtime state ──────────────────────────────────────────────────────
typeset -g __cmd_start_time=0
typeset -g __cmd_runtime=''

_my_timer_preexec() {
    __cmd_start_time=$EPOCHREALTIME
}

_my_timer_precmd() {
    local exit_status=$?
    local -i elapsed_ms total_seconds minutes seconds
    local formatted_seconds

    # Clear previous runtime. This makes it disappear when pressing Enter.
    __cmd_runtime=''

    if (( __cmd_start_time > 0 )); then
        elapsed_ms=$(( (EPOCHREALTIME - __cmd_start_time) * 1000 + 0.5 ))

        if (( elapsed_ms >= CMD_RUNTIME_MIN_MS )); then
            if (( elapsed_ms <= CMD_RUNTIME_MS_UNTIL )); then
                __cmd_runtime="${elapsed_ms} ms"

            elif (( elapsed_ms < CMD_RUNTIME_SECONDS_UNTIL * 1000 )); then
                formatted_seconds="$(
                    LC_NUMERIC=C printf "%.${CMD_RUNTIME_SECONDS_DECIMALS}f s" \
                        "$(( elapsed_ms / 1000.0 ))"
                )"
                __cmd_runtime="$formatted_seconds"

            else
                total_seconds=$(( elapsed_ms / 1000 ))
                minutes=$(( total_seconds / 60 ))
                seconds=$(( total_seconds % 60 ))
                __cmd_runtime="${minutes}m ${seconds}s"
            fi
        fi
    fi

    __cmd_start_time=0

    if [[ -n "$__cmd_runtime" ]]; then
        RPROMPT="%F{${CMD_RUNTIME_COLOR}}${__cmd_runtime}%f${RPROMPT_SEPARATOR}%F{${CLOCK_COLOR}}[${CLOCK_FORMAT}]%f"
    else
        RPROMPT="%F{${CLOCK_COLOR}}[${CLOCK_FORMAT}]%f"
    fi

    return $exit_status
}

add-zsh-hook preexec _my_timer_preexec
add-zsh-hook precmd  _my_timer_precmd


source ~/.alias.bash


# Created by `pipx` on 2026-05-27 21:25:41
export PATH="$PATH:$HOME/.local/bin"
