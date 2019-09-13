#!/usr/local/bin/fish

function try_link
  if ! test -f $argv[2]
    ln -s $PWD/$argv[1] $argv[2]
    echo "link $argv[2] created for $argv[1]"
  else
    echo "$argv[2] already exists. Please fix this manually."
  end
end


echo "Installing mconfig dotfiles..."

try_link .emacs.d/init.el ~/.emacs.d/init.el
try_link config.fish ~/.config/fish/config.fish
try_link abbr.fish ~/.config/fish/abbr.fish
try_link .vimrc ~/.vimrc
try_link init.vim ~/.config/nvim/init.vim
try_link alacritty.yml ~/.config/alacritty/alacritty.yml
#ln -s ~/.emacs.d/init.el ./.emacs.d/init.el
#ln -s ~/.config/fish/config.fish ./config.fish
#ln -s ~/.vimrc ./.vimrc
