" Jan Clarin's .vimrc file
filetype off

" Vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

set nocompatible                " use vim settings over vi settings
filetype plugin indent on
syntax enable       

" Theme
set background=dark
colorscheme solarized

" vim-airline settings
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#syntastic#enabled=1

" ctrlp settings
" set working directory to nearest ancestor with .git
let g:ctrlp_working_path_mode='ra' 
let g:ctrlp_show_hidden=0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " ignore certain files

" delimitMate settings
let delimitMate_expand_cr=1

" syntastic settings
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/usr/local/bin/python3'
let g:syntastic_haskell_checkers = ['hlint', 'ghc_mod']

" Set map leader
let mapleader=' '

" Key mappings
inoremap jk <esc>
vnoremap v <esc>
nnoremap j gj
nnoremap k gk
nnoremap H ^
nnoremap L $
" Remove highlighting
nnoremap // :nohl<cr>
" Paste from clipboard
nnoremap <leader>v "+p

" Buffer managing mappings
nnoremap <leader>be :edit 
nnoremap <leader>ba :badd 
nnoremap <leader>l :bnext<cr>
nnoremap <leader>h :bprevious<cr>
nnoremap <leader>bq :bdelete<cr>
nnoremap <leader>bl :ls<cr>

" File manager mappings
nnoremap <leader>e :NERDTreeToggle<cr> 
nnoremap <leader>p :CtrlP<cr>

" vim fugitive mappings
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gg :Ggrep

map <leader>tt :silent ! pdflatex *.tex<cr>:redraw!<cr>
" compile any .tex file in the directory silently, and refresh vim.

" Language configs
" Use 2-space tabs for html/css as per Google Style guidelines
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2

" UI Config
set encoding=utf-8              " unicode character encoding
set number                      " show line numbers
set ruler                       " show ruler
set showcmd                     " show command in bottom bar
set showmode                    " always show current editing mode
set scrolloff=5                 " maintains 5 lines above cursor when scrolling
set laststatus=2                " always display status line
set visualbell                  " visual bell enabled
set splitbelow                  " split windows appear below
set splitright                  " split windows appear to the right
set wildmenu                    " enable completion on the command line
set wildmode=list:longest       " list all matches
set ttyfast                     " fast terminal connection

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

" Set backup file directory.
set backupdir=~/.vim/tmp        
set directory=~/.vim/tmp
