so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
"so ~/.vim/autoclose.vim

set mouse=a
set fileformat=unix
set encoding=UTF-8

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |

set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set expandtab
set signcolumn=yes
set noerrorbells visualbell t_vb=
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set clipboard=unnamed
set ignorecase
set smartcase
set incsearch
nnoremap <CR> :noh<CR><CR>:<backspace>


" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Shows the current line as absolute number and the lines above and below
" relative to current line
set relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
"set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=8

" Do not show the mode (e.g. insert, visual, normal) but let AirLine do it.
set noshowmode
