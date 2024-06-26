#set fish_user_paths /usr/local/bin /usr/bin /bin /usr/sbin /sbin /opt/local/bin /opt/local/sbin /Users/martinclason/narwhal/bin /Users/martinclason/opt/GNAT/2019/bin /opt/X11/bin /usr/local/share/dotnet /Users/martinclason/Utveckling/Terminal/bin /Users/martinclason/.npm-packages/bin /Users/martinclason/anaconda3/bin /Users/martinclason/.local/bin ~/.cabal/bin /Users/martinclason/.ghcup/bin
# Changed path to this to fix python error when starting swift REPL
set fish_user_paths /usr/local/bin /usr/bin /usr/bin /bin /usr/sbin /sbin /opt/local/bin /opt/local/sbin /usr/local/sbin /Users/martinclason/narwhal/bin /Users/martinclason/opt/GNAT/2018/bin /opt/X11/bin /usr/local/share/dotnet /Users/martinclason/Utveckling/Terminal/bin /Users/martinclason/.npm-packages/bin /Users/martinclason/anaconda3/bin /Users/martinclason/.local/bin /usr/local/Cellar/llvm/12.0.0/bin ~/.cabal/bin /Users/martinclason/.ghcup/bin /usr/bin/swift /Users/martinclason/opt/GNAT/2019/bin ~/bin /Users/martinclason/.poetry/bin 
set -gx NARWHAL_ENGINE jsc
set -gx CAPP_BUILD "/Users/martinclason/Utveckling/Cappuccino/Build"
#set -gx EDITOR "Visual Studio Code"
set -gx LANG "en_GB.UTF-8"
set -g Z_SCRIPT_PATH ~/.z
set -g theme_date_format "+%H:%M"
set -g IHP_EDITOR "sublime"
#set -g TERM "xterm+256color"
#set -g TERM "xterm-256color-italic"

#alias spacemacs "env HOME=$HOME/spacemacs emacs"
#alias gs "git status"
#alias gc "git commit"
#alias gcm "git commit -m"
#alias gcam "git commit -am"
#alias gaa "git add -A"

#alias l "less"

#alias config='/usr/bin/git --git-dir=$HOME/.mconfig.git/ --work-tree=$HOME'
#alias emacmacs='/Applications/Emacmacs.app/Contents/MacOS/Emacs'
#alias unidrive="cd '/Users/martinclason/Library/Mobile Documents/3L68KQB4HG~com~readdle~CommonDocuments/Documents'"

alias tvim "env TERM=xterm-256color vim"
alias clang++17 "clang++ -std=c++17 -Wall -Wextra -pedantic -Weffc++ -Wold-style-cast -Woverloaded-virtual -fmax-errors=3 -g"
alias c++20 "clang++ -std=c++20 -Wall -Wextra -pedantic -Weffc++ -Wold-style-cast -Woverloaded-virtual -ferror-limit=3 -g"

set -gx GETLAB_LOCATION "~/unidrive/UPP/getlab-cli"

alias getlab "$GETLAB_LOCATION/staff_cli.py"
alias glabs "cd $GETLAB_LOCATION/labs"

set -x EDITOR vim

set -gx FZF_DEFAULT_COMMAND 'fd --type f --hidden --follow --exclude .git'
set -gx STARSHIP_CONFIG "~/.config/starship.toml"

# Abbreviations
if test -f ~/.config/fish/abbr.fish
    source ~/.config/fish/abbr.fish
end

function mkcd 
    mkdir $argv && cd $argv
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/martinclason/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

#bass source ~/.nvm/nvm.sh --no-use ';' nvm use node
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; test -f /Users/martinclason/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /Users/martinclason/.ghcup/bin $PATH # ghcup-env

# This should be manually run to create aliases for node, yarn... see https://github.com/FabioAntunes/fish-nvm
# nvm_alias_command

# starship init fish | source

# Nix försökte ursprungligen skriva detta till /usr/local/etc/fish/conf.d/nix.fish
# # Nix
# if test -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish'
#   . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish'
# end
# # End Nix

# https://direnv.net/docs/hook.html
direnv hook fish | source
