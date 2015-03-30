set nocompatible
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'chriskempson/base16-vim'

call vundle#end()

colorscheme base16-default
let base16colorspace=256
set background=dark

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

set history=700
set vb

set cul