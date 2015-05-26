" Jan Clarin's .vimrc file
filetype off

" Vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
call vundle#end()

set nocompatible                " use vim settings over vi settings
filetype plugin indent on
syntax enable       

" Theme
colorscheme molokai
let g:molokai_original=1
let g:rehash256=1

" Vim-airline settings
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#syntastic#enabled=1

" delimitMate settings
let delimitMate_expand_cr=1

" Set map leader
let mapleader=' '

" Key mappings
inoremap jk <esc>
vnoremap jk <esc>
nnoremap j gj
nnoremap k gk
nnoremap H ^
nnoremap L $

" Buffer managing mappings
nnoremap <leader>be :edit 
nnoremap <leader>ba :badd 
nnoremap <leader>l :bnext<cr>
nnoremap <leader>h :bprevious<cr>
nnoremap <leader>bq :bdelete<cr>
nnoremap <leader>bl :ls<cr>

nnoremap <leader>v :set paste!<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

map // :nohl<cr>
map <C-e> :NERDTreeToggle<cr> 
map <leader>tt :silent ! pdflatex *.tex<cr>:redraw!<cr>
" compile any .tex file in the directory silently, and refresh vim.

" UI Config
set number                      " show line numbers
set hidden                      " hides buffers
set showcmd                     " show command in bottom bar
set splitbelow                  " split windows appear below
set splitright                  " split windows appear to the right
set scrolloff=5                 " maintains 5 lines above cursor when scrolling
set laststatus=2                " always display status line
" Highlight the 81th column
if (exists('+colorcolumn'))
    set colorcolumn=81
    highlight ColorColumn ctermbg=9
endif

" Editor
set encoding=utf-8              " unicode character encoding
set ruler                       " show ruler
set showcmd                     " show in-progress command
set showmode                    " always show current editing mode
set wildmenu                    " enable completion on the command line
set wildmode=list:longest       " list all matches
set ttyfast                     " fast terminal connection
set visualbell                  " visual bell enabled

" Formatting
set tabstop=4                   " number of visual spaces per tab
set softtabstop=4               " number of spaces in tab when editing
set shiftwidth=4                " number of spaces for autoindenting
set expandtab                   " use spaces in place of tabs
set smarttab                    " use shiftwidth setting for inserting tabs
set shiftround                  " use multiple of shiftwidth when indenting
set autoindent                  " allow autoindentation
set copyindent                  " copy previous level of indentation
set backspace=indent,eol,start  " allow backspaces over everything

" Searching
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches
set ignorecase                  " ignore case on search
set smartcase                   " ignore case if all lowercase

" Set command timeout length
set ttimeout
set ttimeoutlen=100
