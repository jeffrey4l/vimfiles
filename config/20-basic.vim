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
set title

autocmd BufRead,BufNewFile *.html setl shiftwidth=2 softtabstop=2 expandtab
autocmd BufRead,BufNewFile *.yml setl shiftwidth=2 softtabstop=2 expandtab
autocmd BufRead,BufNewFile *.yaml setl shiftwidth=2 softtabstop=2 expandtab

set foldmethod=marker
set nofoldenable
set t_Co=256

set formatoptions+=Mm

set fileencodings=utf-8,ucs-bom,gbk,gb2312,gb18030,cp936 "set gvim to show chinese
set encoding=utf-8

colorscheme molokai

let mapleader = ","
let maplocalleader = "\\"

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
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

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

map <Leader>s <Esc>:!aspell -c --dont-backup %<CR>:e! %<CR><CR>

" Highlight tail spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
