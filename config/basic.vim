set nocompatible

filetype plugin on
syntax on
filetype indent on

set number
set hlsearch
set incsearch
set ignorecase

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cindent
set autoindent
set smartindent

set t_Co=256

set fileencodings=utf-8,ucs-bom,gbk,gb2312,gb18030,cp936 "set gvim to show chinese
set encoding=utf-8

colorscheme molokai

let mapleader = ","
set mouse=a

"""""""""""""""""""""""
" vim mapping setting "
"""""""""""""""""""""""
map - <C-W>-
map + <C-W>+
map <C-.> <C-w>>
map <C-,> <C-w><
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
if has('nvim')
 nmap <BS> <C-W>h
endif
map tc :tabclose<CR>
map tn :tabnew<CR>
map tt :tab split<CR>
map <F1> <ESC>
set winaltkeys=no
"set winheight=999
nnoremap j gj
vmap j gj
nnoremap k gk
vmap k gk

" sudo write
command W w !sudo tee % > /dev/null

" gvim
set guifont=Ubuntu\ Mono\ 18
set go-=mTr

set selection=exclusive
set selectmode=mouse,key
set completeopt=longest,menu
set scrolloff=5
set history=1000

"""""""""""""""""""""""""""""""""""""""""""""
" Vim quickfix list launch files in new tab "
"""""""""""""""""""""""""""""""""""""""""""""
" http://stackoverflow.com/questions/6852763/vim-quickfix-list-launch-files-in-new-tab
set switchbuf+=newtab,usetab
