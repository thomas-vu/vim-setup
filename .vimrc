" Jan Clarin's .vimrc file
filetype off

" Vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
call vundle#end()

set nocompatible                " use vim settings over vi settings
filetype plugin indent on
syntax enable       

" Theme
set background=dark
colorscheme solarized

" Vim-airline settings
let g:airline_theme='solarized'
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#syntastic#enabled=1
let g:airline#extensions#ctrlp#color_template='insert'

" Key mappings
let mapleader=' '
nnoremap j gj
nnoremap k gk
map // :nohl<CR>
map <C-e> :NERDTreeToggle<CR> 
" compile any .tex file in the directory silently, and refresh vim.
map <Leader>ll :silent ! pdflatex *.tex<CR>:redraw!<CR>

" Formatting
set tabstop=4                   " number of visual spaces per tab
set softtabstop=4               " number of spaces in tab when editing
set shiftwidth=4                " number of spaces for autoindenting
set expandtab                   " use spaces in place of tabs
set smarttab                    " use shiftwidth setting for inserting tabs
set shiftround                  " use multiple of shiftwidth when indenting
set autoindent                  " allow autoindentation
set smartindent                 " use smart indentation
set backspace=indent,eol,start  " allow backspaces over everything

" UI Config
set number                      " show line numbers
set showcmd                     " show command in bottom bar
set cursorline                  " highlight current line
set splitbelow                  " split windows appear below
set splitright                  " split windows appear to the right
set scrolloff=5                 " maintains 5 lines above cursor when scrolling
set laststatus=2                " always display status line
set wildmenu                    " enable completion on the command line
set wildmode=list:longest       " list all matches
set showmode                    " always show current editing mode
set visualbell                  " visual bell enabled

" Searching
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches
set ignorecase                  " ignore case on search
set smartcase                   " ignore case if all lowercase
