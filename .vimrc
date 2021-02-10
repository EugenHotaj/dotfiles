set nocompatible " Don't try to be VI compatible.
filetype off " Make sure plugins don't break when loaded.
set modelines=0 " Something to do with security.
set ttyfast " Faster rendering.
set t_Co=256 " Use 256 terminal colors.
set encoding=utf-8 " Text encoding.
set backspace=indent,eol,start " Make backspace sane.
set undofile " Save undo history across sessions.
set formatoptions=tcqj " See fo-table.
set ruler showmode showcmd " Set up status line. 
set number " Show line numbers.

" Tabbing. 
set tabstop=2 
set shiftwidth=2 
set softtabstop=2 
set expandtab

" Seaching.
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch

" Plugins.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'psf/black'
Plugin 'jaredgorski/spacecamp'
call vundle#end() 
filetype plugin indent on

" Syntax highlighting and colorscheme.
syntax on
set background=dark
set termguicolors
colorscheme spacecamp

" Run Black formatter on save.
autocmd BufWritePre *.py execute ':Black'
