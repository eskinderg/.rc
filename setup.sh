#!/bin/bash

ln -s ~/.rc/.vimrc ~/.vimrc
ln -s ~/.rc/.bashrc ~/.bashrc
ln -s ~/.rc/.tmux.conf ~/.tmux.conf
ln -s ~/.rc/.zshrc ~/.zshrc
ln -s ~/.rc/.profile ~/.profile
ln -s ~/.rc/.themerc.vim ~/.vim/colors/EskTheme.vim

if [ -d ~/.config/nvim ]  # Check if neovim is installed
then
  ln -s ~/.rc/.vimrc ~/.config/nvim/init.vim
  mkdir -p ~/.config/nvim/colors
  ln -s ~/.rc/.themerc.vim ~/.config/nvim/colors/EskTheme.vim
fi
