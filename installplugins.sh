#!/bin/bash

# Install Vundle plugin
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Vim plugins listed in .vimrc
vim +PluginInstall +qall

# Links .vimrc in root directory with the .vimrc in cloned directory
rm ~/.vimrc
ln -s ~/vim-setup/.vimrc ~/.vimrc

# Set up YouCompleteMe plugin
cd ~
mkdir -p ~/ycm_build
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make ycm_support_libs
