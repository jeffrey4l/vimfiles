set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/
call vundle#rc()


Bundle 'vim-dokuwiki'
Bundle "jQuery"
Bundle 'rstacruz/sparkup'
Bundle 'vim-scripts/calendar.vim'
Bundle 'vim-scripts/DrawIt'
Bundle 'vim-scripts/MatchTag'
Bundle 'Shougo/neosnippet.git'
Bundle 'vim-scripts/nginx.vim'
Bundle 'vim-scripts/speeddating.vim'
Bundle 'vim-scripts/surround.vim'
Bundle 'vim-scripts/Tabbi'
Bundle 'vim-scripts/Tagbar'
Bundle 'vim-scripts/vim-coffee-script'
Bundle 'vim-scripts/ZenCoding.vim'
Bundle 'groenewege/vim-less'
Bundle "Markdown"
Bundle "vim-scripts/tiddlywiki"
Bundle "repeat.vim"
Bundle "surround.vim"
Bundle "SuperTab"
Bundle "file-line"
Bundle "Align"
Bundle 'toggle_mouse'
Bundle "scrooloose/syntastic"
Bundle "puppetlabs/puppet-syntax-vim"
Bundle 'terryma/vim-multiple-cursors'
Bundle 'Lokaltog/powerline'
Bundle 'ameade/qtpy-vim'
"""""""""""""""""
" jade
"""""""""""""""""
Bundle 'jade.vim'
"""""""""""""""""
" jedi-vim
"""""""""""""""""
"filetype detect
Bundle "davidhalter/jedi-vim"
let g:jedi#auto_initialization = 1
let g:jedi#popup_on_dot = 0
"autocmd  FileType python let b:did_ftplugin = 1
let g:jedi#popup_select_first = 0
"""""""""""""""""
" neocomplcache
"""""""""""""""""
Bundle 'neocomplcache'
let g:neocomplcache_enable_at_startup = 1
if !exists('g:neocomplcache_omni_functions')
    let g:neocomplcache_omni_functions = {}
endif
let g:neocomplcache_omni_functions['python'] = 'jedi#completions'

if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.python = '[^. \t]\.\w*'
imap <silent><C-l>     <Plug>(neocomplcache_snippets_expand)
smap <silent><C-l>     <Plug>(neocomplcache_snippets_expand)

"""""""""""""""""
" Vim indent Guides
"""""""""""""""""
Bundle "nathanaelkane/vim-indent-guides"
let g:indent_guides_auto_colors = 0 
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,ColorScheme * :hi IndentGuidesEven ctermbg=darkgrey
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3 
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4 
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

"""""""""""""""""
"General Setting"
"""""""""""""""""
filetype plugin indent on
set number
if $TERM =~ '^xterm'
        set t_Co=256
        colorscheme molokai
elseif $TERM =~ '^screen-256'
        set t_Co=256
        colorscheme molokai
elseif $TERM =~ '^screen-bce'
        set t_Co=256            " just guessing
        colorscheme molokai
elseif $TERM =~ '^rxvt'
        set t_Co=88
        color desert
elseif $TERM =~ '^linux'
        set t_Co=8
        color desert
else
        set t_Co=16
        color desert
endif

set hlsearch
set incsearch

set formatoptions=tcqmM	" line break can follow an Asian Char and DO NOT insert space before
						" or after an Asian Char

set backspace=indent,eol,start
set wildmenu
" sudo save
command W w !sudo tee % > /dev/null

"
set clipboard+=unnamed

"autocmd BufWritePre * silent! %s/\s\+$//
"autocmd BufWritePre * silent! %s/\(\s*\n\)\+\%$//

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cindent
set autoindent
let VIMFILES=$HOME."/.vim"
set guifont=Monospace\ 12
"""""""""""""""""""""""
"   vim mapping setting
"""""""""""""""""""""""
map - <C-W>-
map + <C-W>+
map <C-.> <C-w>>
map <C-,> <C-w><
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <A-j> <C-W>j<C-w>_
map <A-k> <C-W>k<C-w>_
map <A-h> <C-W>h<c-w><Bar>
map <A-l> <C-W>l<c-w><Bar>
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
map ; :
au FileType javascript map <C-f> :call g:Jsbeautify()<CR>
let mapleader=","
""""""""""""""""""""""
" gvim fullscreen on start
""""""""""""""""""""""
if has("gui_running")
    au GUIEnter * set fullscreen
endif

""""""""""""""""""""""
" vim undo (for vim 7.3)
""""""""""""""""""""""
if v:version >= 703
    set undofile
    set undolevels=10000
    set undodir='/tmp/'
endif

set go-=mTr

filetype plugin on
syntax on
filetype indent on

set mouse=a
set selection=exclusive
set selectmode=mouse,key
set completeopt=longest,menu
set smartindent
set scrolloff=5
set history=1000
set ignorecase
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 "set gvim to show chinese
set statusline=%F%m%r%h%w\ [F=%{&ff}]\ [T=%Y]\ [A=\%03.3b]\ [H=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2



if has('win32')
    set encoding=cp936
else
    set encoding=utf-8
endif

"""""""""""""""""
" Auto Commands
""""""""""""""""
autocmd BufRead,BufNewFile *.tracwiki set filetype=tracwiki
autocmd BufRead,BufNewFile *.tiddlywiki set filetype=tiddlywiki
autocmd BufNewFile,BufRead .tmux.conf*,tmux.conf* set filetype=tmux
autocmd BufRead,BufNewFile *.coffee set filetype=coffee
autocmd BufRead,BufNewFile *.g set filetype=antlr3

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
"""""""""""""""""""""""
"   YankRing setting
"""""""""""""""""""""""
Bundle "YankRing.vim"
let g:yankring_max_history=20
let g:yankring_zap_keys = '@'
""""""""""""""""""""""
" pyflakes plugin
""""""""""""""""""""""
Bundle 'vim-scripts/pyflakes.vim'
let g:pyflakes_use_quickfix = 0
"""""""""""""""""""""""
"   tags setting
"""""""""""""""""""""""
map<F10> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
""""""""""""""""""""""""""""""
" NERD_commenter
""""""""""""""""""""""""""""""
Bundle 'vim-scripts/The-NERD-Commenter'
let NERDShutUp=1
map <c-i> <leader>c<space>

""""""""""""""""""""""""""""""
" NERD_tree
""""""""""""""""""""""""""""""
Bundle 'vim-scripts/The-NERD-tree'
"let loaded_nerd_tree=1
let NERDChristmasTree = 1		" Tells the NERD tree to make itself colourful and pretty.
let NERDTreeAutoCenter =1		" Window centers when the cursor moves within a specified distance to the top/bottom of the window.
let NERDTreeAutoCenterThreshold = 3	" Controls the sensitivity of autocentering.
let NERDTreeCaseSensitiveSort = 0	" Tells the NERD tree whether to be case sensitive or not when sorting nodes.
let NERDTreeChDirMode = 0		" Tells the NERD tree if/when it should change vim's current working directory.
let NERDTreeHighlightCursorline = 1	" Tell the NERD tree whether to highlight the current cursor line.
let NERDTreeHijackNetrw = 1		" Tell the NERD tree whether to replace the netrw autocommands for exploring local directories.
let NERDTreeIgnore= ['\~$','.*\.pyc','.*\.pyo']		" Tells the NERD tree which files to ignore.
let NERDTreeBookmarksFile =$HOME.'/.NERDTreeBookmarks' " Where the bookmarks are stored.
let NERDTreeMouseMode = 2 		" Tells the NERD tree how to handle mouse clicks.
let NERDTreeQuitOnOpen = 0		" Closes the tree window after opening a file.
let NERDTreeShowBookmarks = 0		" Tells the NERD tree whether to display the bookmarks table on startup
let NERDTreeShowFiles = 1		" Tells the NERD tree whether to display files in the tree on startup.
let NERDTreeShowHidden = 0		" Tells the NERD tree whether to display hidden files on startup.
let NERDTreeShowLineNumbers = 0		" Tells the NERD tree whether to display line numbers in the tree window.
let NERDTreeSortOrder = ['\/$', '*', '\.swp$', '\.bak$', '\~$'] " Tell the NERD tree how to sort the nodes in the tree.
let NERDTreeStatusline = "%{exists('b:NERDTreeRoot')?b:NERDTreeRoot.path.str():''}" " Set a statusline for NERD tree windows.
let NERDTreeWinPos = "left"		" Tells the script where to put the NERD tree window
let NERDTreeWinSize = 21		" Sets the window size when the NERD tree is opened.
nmap <F3> :NERDTreeToggle<CR> :NERDTreeMirror<CR>

""""""""""""""""""""""""""""""
" snippets plugin
""""""""""""""""""""""""""""""
Bundle 'vim-scripts/snipMate'

"autocmd FileType python set ft=python.django
autocmd FileType html set ft=htmldjango.html
autocmd FileType xhtml set ft=htmldjango.html

""""""""""""""""""""""""""""""
" cscope
""""""""""""""""""""""""""""""
cs add cscope.out
set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
map <F11> :!cscope -Rbk<CR>
""""""""""""""""""""""""""""""
" Show Function
""""""""""""""""""""""""""""""
if has("win32")
    let g:showfuncctagsbin="c:\\windows\\ctags.exe"
else
    let g:showfuncctagsbin="/usr/bin/ctags"
endif
""""""""""""""""""""""""""""""
" xml plugins
""""""""""""""""""""""""""""""
let xml_no_html=1
""""""""""""""""""""""""""""""
" Format XML by using xmllint
""""""""""""""""""""""""""""""
function! DoPrettyXML()
  " save the filetype so we can restore it later
  let l:origft = &ft
  set ft=
  " delete the xml header if it exists. This will
  " permit us to surround the document with fake tags
  " without creating invalid xml.
  1s/<?.*?>//e
  " insert fake tags around the entire document.
  " This will permit us to pretty-format excerpts of
  " XML that may contain multiple top-level elements.
  0put =''
  $put =''
  silent %!xmllint --format -
  " xmllint will insert an header. it's easy enough to delete
  " if you don't want it.
  " delete the fake tags
  2d
  $d
  " restore the 'normal' indentation, which is one extra level
  " too deep due to the extra tags we wrapped around the document.
  silent %<
  " back to home
  1
  " restore the filetype
  exe "set ft=" . l:origft
endfunction
command! PrettyXML call DoPrettyXML()
""""""""""""""""""""""""""""""
" snipMate
""""""""""""""""""""""""""""""
let g:snips_author='Jeffrey Zhang <zhang.lei.fly@gmail.com>'
ino <c-j> <c-r>=TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=TriggerSnippet()<cr>

"""""""""""""""""""""""
" autoclose plugin
"""""""""""""""""""""""
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'"}
"""""""""""""""""""""""
" Tagbar plugin
"""""""""""""""""""""""
map <F4> :TagbarToggle<CR>
let g:tagbar_width=20
"""""""""""""""""""""""
" Ack.vim plugin
"""""""""""""""""""""""
Bundle "ack.vim"
"let g:ackprg="ack-grep -H --nocolor --nogroup --column"
"let g:langpair="en|zh-CN"
"""""""""""""""""""""""
" Power line plugin
"""""""""""""""""""""""
Bundle 'Lokaltog/vim-powerline'
let Powerline_colorscheme="skwp"
"""""""""""""""""""""""
" vim coffee plugin
"""""""""""""""""""""""
let coffee_compiler='/usr/local/bin/coffee'
"""""""""""""""""
" Unite
"""""""""""""""""
Bundle 'Shougo/unite.vim'
map <leader>f :<C-u>Unite -start-insert file<CR>
map <leader>r :<C-u>Unite -start-insert file_rec<CR>
map <leader>m :<C-u>Unite file_mru<CR>
map <leader>y :<C-u>Unite history/yank<CR>
map <silent> <leader>b :<C-u>Unite buffer file_mru bookmark<CR>
