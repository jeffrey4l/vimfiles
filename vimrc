set nocompatible               " be iMproved
filetype off                   " required!

"""""""""""""""""
"General Setting"
"""""""""""""""""
filetype plugin indent on
set number
set t_Co=256
color desert

set hlsearch
set incsearch

set formatoptions=tcqmM	" line break can follow an Asian Char and DO NOT insert space before
						" or after an Asian Char

set backspace=indent,eol,start
set wildmenu

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cindent
set autoindent

nnoremap j gj
vmap j gj
nnoremap k gk
vmap k gk
let mapleader=","
""""""""""""""""""""""""
" FileType configuration
""""""""""""""""""""""""
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype htmldjango setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

filetype plugin on
syntax on
filetype indent on

set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 "set gvim to show chinese
set statusline=%F%m%r%h%w\ [F=%{&ff}]\ [T=%Y]\ [A=\%03.3b]\ [H=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2


if has('win32')
    set encoding=cp936
else
    set encoding=utf-8
endif


""""""""""""""""""""""""
" Python template
""""""""""""""""""""""""
augroup python
    function AddTitlePython()
        call setline(1, '#!/usr/bin/env python')
        call append(1, '#-*- coding:utf-8 -*-')
        call append(2, '#Author: Lei Zhang <zhang.lei.fly@gmail.com>')
        normal G
        normal o
        normal O
    endf
    autocmd BufNewFile *.py call AddTitlePython()
augroup end

if has("win32")
    let g:showfuncctagsbin="c:\\windows\\ctags.exe"
else
    let g:showfuncctagsbin="/usr/bin/ctags"
endif
