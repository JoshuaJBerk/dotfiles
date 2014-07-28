#!/bin/sh
# Vundle setup

if [ ! -e $HOME/.vim/bundle/Vundle.vim  ]; then
  git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
  vim +PluginInstall +qa
fi

exit 0
