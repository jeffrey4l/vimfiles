" Basic
set nocompatible

" Indentation & Tabs
set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

autocmd BufRead,BufNewFile *.html setl shiftwidth=2 softtabstop=2 expandtab
autocmd BufRead,BufNewFile *.yml setl shiftwidth=2 softtabstop=2 expandtab
autocmd BufRead,BufNewFile *.yaml setl shiftwidth=2 softtabstop=2 expandtab

" Display & format
set number
set showmatch
syntax enable
colorscheme desert
filetype plugin on
filetype indent on

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Browse & Scroll
set scrolloff=5
set laststatus=2

" Encoding
" support show chinese
set fileencodings=utf-8,ucs-bom,gbk,gb2312,gb18030,cp936 
set encoding=utf-8

" Persistent undo
" Use following command to clear old undofile
"   find ~/.vim.cache/undo -type f -mtime +90 -delete
if has('persistent_undo')
    if !isdirectory($HOME."/.vim.cache")
        call mkdir($HOME."/.vim.cache", "", 0770)
    endif
    if !isdirectory($HOME."/.vim.cache/undo")
        call mkdir($HOME."/.vim.cache/undo", "", 0700)
    endif
    set undodir=$HOME/.vim.cache/undo
    set undofile
endif


" Miscellaneous
set nobackup
set noswapfile
if has('autochdir')
    set autochdir
endif
set undofile
set visualbell
set errorbells
set t_vb=
let mapleader = ","
set paste
" sudo write
command W w !sudo tee % > /dev/null
