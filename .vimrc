set nocompatible

filetype on
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'Yggdroot/indentLine'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'davidhalter/jedi-vim'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'posva/vim-vue'
    Plugin 'altercation/vim-colors-solarized.git'
    Plugin 'othree/html5.vim'
    Plugin 'pangloss/vim-javascript'
    Plugin 'w0rp/ale'
    Plugin 'ntpeters/vim-better-whitespace'
    Plugin 'itchyny/lightline.vim'
call vundle#end()

syntax on

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set encoding=utf-8
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set number
set ruler
set colorcolumn=80

let mapleader=","

set autoread
set noautowrite
set noautowriteall

set nobackup
set nowb
set noswapfile

set history=700

set noerrorbells
set novisualbell
set nolazyredraw
set t_vb=

set clipboard=unnamed
set laststatus=2

set mouse=a
set cul

let g:ale_sign_column_always = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

let g:ale_fixers = {
\   'python': ['yapf'],
\   'javascript': ['eslint'],
\}
let g:lightline = {
\ 'colorscheme': 'wombat',
\ }

let g:ale_sign_error = 'ER'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
