#!/bin/bash

# Usage: ./setup.sh [--simple]

# Folder
echo `ls ~/`
SETUP_DIR="$( cd "$( dirname "$0" )" && pwd )"

# Remove current .vimrc file if it exists.
if [ -e ~/.vimrc ]; then
    rm ~/.vimrc
fi

if [[ $1 == "--simple" ]]; then
    # Link the simple .vimrc file.
    ln -s $SETUP_DIR/.simplevimrc ~/.vimrc
else
    # Install Vundle plugin.
    mkdir -p ~/.vim/bundle
    if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
        git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    fi

    # Create backup file directory.
    mkdir -p ~/.vim/tmp

    # Links .vimrc in root directory with the .vimrc in cloned directory.
    ln -s $SETUP_DIR/.vimrc ~/.vimrc

    # Install Vim plugins listed in .vimrc.
    vim +PluginInstall +qall
fi
