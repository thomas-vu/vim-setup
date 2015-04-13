#!/bin/bash

# Install Vundle plugin
mkdir -p ~/.vim/bundle
if [ ! -d "../.vim/bundle/Vundle.vim" ]; then
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Links .vimrc in root directory with the .vimrc in cloned directory
rm ~/.vimrc
ln -s ~/vim-setup/.vimrc ~/.vimrc

# Install Vim plugins listed in .vimrc
vim +PluginInstall +qall

# Compile YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
