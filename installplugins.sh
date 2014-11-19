#!/bin/bash

mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Replaces .vimrc in root directory with my .vimrc
rm ~/.vimrc
ln -s ~/vim-setup/.vimrc ~/.vimrc
