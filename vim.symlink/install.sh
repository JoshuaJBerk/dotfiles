#!/bin/sh
# Vundle setup

if [ ! -f $ZSH/vim.symlink/bundle/Vundle.vim/README.md ]; then
  git clone https://github.com/gmarik/vundle ~/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall
fi

exit 0
