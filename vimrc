set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'django.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'rstacruz/sparkup'
Plugin 'vim-scripts/calendar.vim'
Plugin 'vim-scripts/DrawIt'
Plugin 'vim-scripts/MatchTag'
Plugin 'vim-scripts/nginx.vim'
Plugin 'vim-scripts/speeddating.vim'
Plugin 'vim-scripts/Tabbi'
Plugin 'vim-scripts/vim-coffee-script'
Plugin 'vim-scripts/Emmet.vim'
Plugin 'repeat.vim'
Plugin 'surround.vim'
Plugin 'Align'
Plugin 'fatih/vim-go'
Plugin 'toggle_mouse'
Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ameade/qtpy-vim'
Plugin 'juvenn/mustache.vim'
Plugin 'matchit.zip'
Plugin 'tomasr/molokai'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'Lokaltog/powerline'
Plugin 'ack.vim'
Plugin 'vim-scripts/Tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/The-NERD-Commenter'
Plugin 'YankRing.vim'
Plugin 'jade.vim'
Plugin 'Shutnik/jshint2.vim'
Plugin 'saltstack/salt-vim'
Plugin 'AndrewRadev/inline_edit.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end() 
filetype plugin indent on

""""""""""""""""""""""""""""""
" Vim Ansible YAML
""""""""""""""""""""""""""""""
Plugin 'chase/vim-ansible-yaml'
autocmd BufRead,BufNewFile *.yaml set filetype=ansible
autocmd BufRead,BufNewFile *.yml set filetype=ansible

"""""""""""""""""""""""""""
" Ensure_cache_folder
"""""""""""""""""""""""""""
let g:cache_folder=$HOME.'/.vim.cache'
function! Ensure_cache_folder(name)
    " NOTE(jeffrey4l) This is not work. But I don't know why?
    " This trick came from 
    " http://stackoverflow.com/questions/1549263/how-can-i-create-a-folder-if-it-doesnt-exist-from-vimrc
    if !isdirectory(g:cache_folder)
        call mkdir(g:cache_folder,'p')
    endif
    if !isdirectory(g:cache_folder.'/'.a:name)
        call mkdir(g:cache_folder.'/'.a:name, 'p')
    endif
endfunction

"""""""""""""""""
"General Setting"
"""""""""""""""""
let mapleader=","
set number
set t_Co=256
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

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cindent
set autoindent
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
au FileType javascript map <C-f> :call g:Jsbeautify()<CR>

""""""""""""""""""""""
" vim undo (for vim 7.3)
""""""""""""""""""""""
call Ensure_cache_folder('undo')
set undofile
set undolevels=10000
set undodir=$HOME/.vim.cache/undo

call Ensure_cache_folder('backup')
let &backupdir=g:cache_folder.'/backup/'
let &dir=g:cache_folder.'/backup'

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
set fencs=utf-8,ucs-bom,sjis,gb18030,gbk,gb2312,cp936 "set gvim to show chinese
set statusline=%F%m%r%h%w\ [F=%{&ff}]\ [T=%Y]\ [A=\%03.3b]\ [H=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
set encoding=utf-8

"""""""""""""""""
" Auto Commands
""""""""""""""""
autocmd BufRead,BufNewFile *.tracwiki set filetype=tracwiki
autocmd BufRead,BufNewFile *.tiddlywiki set filetype=tiddlywiki
autocmd BufNewFile,BufRead .tmux.conf*,tmux.conf* set filetype=tmux
autocmd BufRead,BufNewFile *.coffee set filetype=coffee
autocmd BufRead,BufNewFile *.g set filetype=antlr3

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype htmldjango setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

autocmd FileType html set ft=htmldjango.html
autocmd FileType xhtml set ft=htmldjango.html

""""""""""""""""""""""""
" Python template
""""""""""""""""""""""""
augroup python
    function AddTitlePython()
        call setline(1, '#!/usr/bin/env python')
        call append(1, '# -*- coding:utf-8 -*-')
        normal G
        normal o
    endf
    autocmd BufNewFile *.py call AddTitlePython()
augroup end

"""""""""""""""""
" Vim quickfix list launch files in new tab
" http://stackoverflow.com/questions/6852763/vim-quickfix-list-launch-files-in-new-tab
"""""""""""""""""
set switchbuf+=newtab,usetab

"""""""""""""""
" minibufexpl "
"""""""""""""""
let g:miniBufExplMaxSize = 1
map <F2> :MBEToggle<CR>

"""""""""
" CtrlP "
"""""""""
"map <leader>f :CtrlP <CR>
let g:ctrlp_map = '<leader>f'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
    \ 'dir': '\.git$\|\.svn$|\.tox$',
    \ 'file': '\.pyc$\|\.pyo$'
    \}
let g:ctrlp_switch_buffer = 'Et'
map <leader>b :CtrlPBuffer<CR>

"""""""""""""
" Syntastic
"""""""""""""
let g:syntastic_python_python_exec = '/usr/bin/python2'
let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }
let g:pymode_lint_write = 0

"""""""""""""""""""""""""""
" Markdown 
"""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled=1

"""""""""""""""""""""""""""
" jshint2
"""""""""""""""""""""""""""

"""""""""""""""""
" jade
"""""""""""""""""

"""""""""""""""""""""""
"   YankRing setting
"""""""""""""""""""""""
call Ensure_cache_folder('yankring')
let g:yankring_max_history=20
let g:yankring_zap_keys = '@'
let g:yankring_history_dir = g:cache_folder.'/yankring'

"""""""""""""""""""""""
"   tags setting
"""""""""""""""""""""""
map<F10> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

""""""""""""""""""""""""""""""
" NERD_commenter
""""""""""""""""""""""""""""""
let NERDShutUp=1
nmap <C-y> <leader>c<space>

""""""""""""""""""""""""""""
" NERD_tree
""""""""""""""""""""""""""""""
"let loaded_nerd_tree=1
let NERDChristmasTree = 1		" Tells the NERD tree to make itself colourful and pretty.
let NERDTreeAutoCenter =1		" Window centers when the cursor moves within a specified distance to the top/bottom of the window.
let NERDTreeAutoCenterThreshold = 3	" Controls the sensitivity of autocentering.
let NERDTreeCaseSensitiveSort = 0	" Tells the NERD tree whether to be case sensitive or not when sorting nodes.
let NERDTreeChDirMode = 2		" Tells the NERD tree if/when it should change vim's current working directory.
let NERDTreeHighlightCursorline = 1	" Tell the NERD tree whether to highlight the current cursor line.
let NERDTreeHijackNetrw = 1		" Tell the NERD tree whether to replace the netrw autocommands for exploring local directories.
let NERDTreeIgnore= ['\~$','.*\.pyc','.*\.pyo', '^tags$', 'cscope', 
                    \ '.*\.egg-info$', '.*\.egg$', '__pycache__']
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
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
nmap <F3> :NERDTreeToggle<CR> :NERDTreeMirror<CR>

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

"""""""""""""""""""""""
" autoclose plugin
"""""""""""""""""""""""
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'"}

"""""""""""""""""""""""
" Tagbar plugin
"""""""""""""""""""""""
map <F4> :TagbarToggle<CR>
let g:tagbar_width=30

"""""""""""""""""""""""
" Ack.vim plugin
"""""""""""""""""""""""
"let g:ackprg="ack-grep -H --nocolor --nogroup --column"
"let g:langpair="en|zh-CN"

"""""""""""""""""""""""
" Power line plugin
"""""""""""""""""""""""
"let Powerline_colorscheme="skwp"

"""""""""""""""""""""""
" vim coffee plugin
"""""""""""""""""""""""
let coffee_compiler='/usr/local/bin/coffee'

"""""""""""""""""""
" Dockerfile Syntax
"""""""""""""""""""
autocmd BufRead,BufNewFile *.sls set filetype=sls
autocmd Filetype sls setlocal tabstop=2 shiftwidth=2

"""""""""""""""""
" YouCompleteMe
"""""""""""""""""
" Use archlinux package instead, install using following
"   pacman -S vim-youcompleteme-git
Bundle 'Valloric/YouCompleteMe'

"""""""""""""
" utrisnips "
"""""""""""""
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Jedi
let g:jedi#auto_initialization = 1
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = 0
"let g:jedi#auto_vim_configuration = 1
let g:jedi#popup_select_first = 0

"
" vim jinja syntax
"
Plugin 'Glench/Vim-Jinja2-Syntax'
