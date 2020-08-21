#!/bin/bash

if [ ! -f ~/.vimrc ]
then
  ln -s $PWD/.vimrc ~/.vimrc
fi

if [ ! -f ~/.bashrc ]
then
  ln -s $PWD/.bashrc ~/.bashrc
fi

if [ ! -f ~/.tmux.conf ]
then
  ln -s $PWD/.tmux.conf ~/.tmux.conf
fi

if [ ! -f ~/.zshrc ]
then
  ln -s $PWD/.zshrc ~/.zshrc
fi

if [ ! -f ~/.xprofile ]
then
  ln -s $PWD/.xprofile ~/.xprofile
fi

if [ ! -f ~/.profile ]
then
  ln -s $PWD/.profile ~/.profile
fi

if [ ! -f ~/.xinitrc ]
then
  ln -s $PWD/.xinitrc ~/.xinitrc
fi

if [ ! -f ~/.Xresources ]               # theme for xterm
then
  ln -s $PWD/.Xresources ~/.Xresources  # theme for xterm
  xrdb -merge ~/.Xresources             # theme for xterm
fi

if [ -d ~/.config/nvim ]                # Check if neovim is installed
then
  if [ ! -f ~/.config/nvim/init.vim ]
  then
    ln -s $PWD/.vimrc ~/.config/nvim/init.vim
  fi

  if [ ! -f ~/.config/nvim/colors/EskTheme.vim ]
  then
    mkdir -p ~/.config/nvim/colors
    ln -s $PWD/.themerc.vim ~/.config/nvim/colors/EskTheme.vim
  fi
else
  echo "Neovim directory ~/.config/nvim does not exist"
fi

if [ -d ~/.vim ]                      # Check if vim is installed
then
  if [ ! -f ~/.vim/colors/EskTheme.vim ]
  then
    mkdir -p ~/.vim/colors
    ln -s $PWD/.themerc.vim ~/.vim/colors/EskTheme.vim
  fi
else
  echo "~/.vim directory does not exist"
fi

#i3status and i3status-rust config
if [ -d ~/.config/i3 ]
then
  if [ ! -f ~/.config/i3/config ]
  then
    ln -s $PWD/i3/config ~/.config/i3/config
  fi
  if [ ! -f ~/.config/i3/i3status-rust/config.toml ]
  then
    ln -s $PWD/i3/i3status-rust/config.toml ~/.config/i3/i3status-rust/config.toml
  fi
else
  echo "~/.config/i3 directory does not exist"
fi

if [ -d ~/.config/vifm ]
then
  if [ -f ~/.config/vifm/vifmrc ]
  then
    mv ~/.config/vifm/vifmrc ~/.config/vifm/vifmrc.backup
  fi
  ln -s $PWD/vifm/vifmrc ~/.config/vifm/vifmrc

  if [ ! -f ~/.config/vifm/scripts/vifm_icons ]
  then
    ln -s $PWD/vifm/vifm_icons ~/.config/vifm/scripts/vifm_icons
  fi
fi

GREEN="$(tput setaf 2)"
printf '%s' "$GREEN"
printf '%s\n'
printf '===============================%s\n'
printf '%s\n' 'Setup Successful'
printf '===============================%s\n'
