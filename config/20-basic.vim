set nocompatible

filetype plugin on
syntax on
filetype indent on

set number
set hlsearch
set incsearch
set ignorecase

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set cindent
set autoindent
set smartindent
set title

" Disable swap file
set noswapfile

autocmd BufRead,BufNewFile *.py setl shiftwidth=4 softtabstop=4

set foldmethod=marker
set nofoldenable

set formatoptions+=Bm

" set gvim to show chinese
set fileencodings=utf-8,ucs-bom,gbk,gb2312,gb18030,cp936
set encoding=utf-8

set t_Co=256
if &diff
  colorscheme molokai
else
  execute 'colorscheme '.g:colorschema
endif

let mapleader = ","
let maplocalleader = "\\"

set mouse=a
set mousemodel=extend

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
if has('nvim')
    " copied from https://vi.stackexchange.com/a/25038
    " requires
    "   export SUDO_ASKPASS='/usr/lib/ssh/x11-ssh-askpass'
    com -bar W exe 'w !sudo tee >/dev/null %:p:S' | setl nomod
else
    command W w !sudo tee % > /dev/null
endif

" gvim
set guifont=JetBrains\ Mono\ NL\ 18
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
"   find ~/.vim/.undodir -type f -mtime +90 -delete
if has('persistent_undo')
    set undodir=$HOME/.vim/.undodir
    set undofile
endif

map <Leader>s <Esc>:!aspell -c --dont-backup %<CR>:e! %<CR><CR>

" Highlight tail spaces
if ! &diff
    highlight ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$/
    autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhitespace /\s\+$/
    autocmd BufWinLeave * call clearmatches()
endif

" Disable readonly for vimdiff
if &diff
    set noreadonly
endif
" set wrap for all file in diff mode
autocmd VimEnter * if &diff | execute 'windo set wrap' | endif
