filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/vundle' 
Bundle 'chriskempson/base16-vim'
Bundle 'Lokaltog/vim-easymotion'

call vundle#end()

syntax on

colorscheme base16-default
let base16colorspace=256
set background=dark

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
set t_vb=

set mouse=a
set cul

function JsGrep()
    let what = input('Search for:')
    execute "vimgrep " . shellescape(expand(what)) . " **.*"
endfunction

nnoremap <silent> <leader>] :cnext<CR>  
nnoremap <silent> <leader>[ :cprevious<CR>
noremap  <leader>g :call JsGrep()<CR>
