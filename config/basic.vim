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

set fencs=utf-8,ucs-bom,gbk,gb2312,gb18030,gcp936 "set gvim to show chinese

colorscheme molokai

let mapleader = ","

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
