#!/bin/bash

ROOT=$(pwd)

declare -a main_dotfiles
main_dotfiles=(
  zlogin
  zprofile
  zshenv
  zshrc
  zprezto
  zpreztorc
  vimrc
  vim
  tmux.conf
  sqliterc
  screenrc
  pryrc
  lscolors
  lftp
  hushlogin
  gvimrc
  gitexclude
  gemrc
  asdfrc
  colours
)

for file in "${main_dotfiles[@]}";
do
  ln -nfs "$ROOT/$file" "$HOME/.$file"
done

ln -nfs "$ROOT/vim" "$HOME/.config/nvim"
