#!/bin/bash

# Usage: ./setup.sh [--simple]

# Remove current .vimrc file.
rm ~/.vimrc

if [[ $1 == "--simple" ]]; then
    # Link the simple .vimrc file.
    ln -s ~/vim-setup/.simplevimrc ~/.vimrc
else
    # Install Vundle plugin.
    mkdir -p ~/.vim/bundle
    if [ ! -d "~/.vim/bundle/Vundle.vim" ]; then
        git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    fi

    # Create backup file directory.
    mkdir -p ~/.vim/tmp

    # Links .vimrc in root directory with the .vimrc in cloned directory.
    ln -s ~/vim-setup/.vimrc ~/.vimrc

    # Install Vim plugins listed in .vimrc.
    vim +PluginInstall +qall
fi
