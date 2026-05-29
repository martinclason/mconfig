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
PROMPT='%F{blue}%~%f %(?.%F{green}.%F{red})%#%f '

source ~/.alias.bash


# Created by `pipx` on 2026-05-27 21:25:41
export PATH="$PATH:$HOME/.local/bin"
