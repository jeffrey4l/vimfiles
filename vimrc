" Usage
"
"   curl -L https://raw.githubusercontent.com/jeffrey4l/vimfiles/litter/vimrc -o ~/.vimrc
"
"   curl -L https://raw.githubusercontent.com/jeffrey4l/vimfiles/litter/vimrc -o ~/.config/nvim/init.vim

"""""""""
" Basic "
"""""""""
set nobackup
set nowritebackup
set noswapfile
set nocompatible
" disable :intro page
set shm+=I

" Indentation & Tabs
set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set showmatch

autocmd BufRead,BufNewFile *.html setl shiftwidth=2 softtabstop=2 expandtab
autocmd BufRead,BufNewFile *.yml setl shiftwidth=2 softtabstop=2 expandtab
autocmd BufRead,BufNewFile *.yaml setl shiftwidth=2 softtabstop=2 expandtab

" Display & format
set number
set ruler
set showmatch
syntax enable
colorscheme desert
filetype plugin on
filetype indent on

if has("gui_running")
  if ($OS == 'Windows_NT')
    " Set a nicer font.
    set guifont=Consolas:h11:cDEFAULT
  endif
  " Hide the toolbar.
  set guioptions-=T
endif

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" clipboard
set clipboard=unnamed

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


if ($OS == 'windows_NT')
  " Fix backspace on windows, more info check
  " https://stackoverflow.com/a/5428340/893981
  set backspace=2
  set backspace=indent,eol,start

  " Disable all button sounds and splash screen
  au GuiEnter * set t_vb=
  " Map Ctrl+Shift+V to paste
  map <C-S-V> "+p
endif

""""""""""""""
" sudo write "
""""""""""""""
if has('nvim')
    " copied from https://vi.stackexchange.com/a/25038
    " requires
    "   export SUDO_ASKPASS='/usr/lib/ssh/x11-ssh-askpass'
    com -bar W exe 'w !sudo tee >/dev/null %:p:S' | setl nomod
else
    command W w !sudo tee % > /dev/null
endif

"""""""""""""""""""""""""
" Highlight tail spaces "
"""""""""""""""""""""""""
if ! &diff
    highlight ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$/
    autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhitespace /\s\+$/
    autocmd BufWinLeave * call clearmatches()
endif

"""""""""""""""
" VIM Mapping "
"""""""""""""""
map - <C-W>-
map + <C-W>+
map <C-.> <C-w>>
map <C-,> <C-w><
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

imap <C-v> <C-r>+

" Load custome file
if filereadable(expand("~/.vimrc_custom"))
  exe "source" expand("~/.vimrc_custom")
endif
