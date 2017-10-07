""""""""""""""""
" Tagbar plugin
""""""""""""""""
map <F4> :TagbarToggle<CR>
let g:tagbar_width=30

" ale
" Write this in your vimrc file
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0


"""""""""""
" Ack.vim "
"""""""""""
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
nnoremap <Leader>a :Ack<space>

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
let NERDTreeMouseMode = 3 		" Tells the NERD tree how to handle mouse clicks.
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
"nmap <F3> :NERDTreeToggle<CR> :NERDTreeMirror<CR>
nmap <F3> :NERDTreeMirrorToggle<CR>

let g:nerdtree_tabs_focus_on_files = 0
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_autofind = 1


"""""""""
" CtrlP "
"""""""""
let g:ctrlp_map = '<leader>f'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
    \ 'dir': '\.git$\|\.svn$|\.tox$',
    \ 'file': '\.pyc$\|\.pyo$'
    \}
let g:ctrlp_switch_buffer = 'Et'
map <leader>b :CtrlPBuffer<CR>

""""""""""""""""""""
" Vim Ansible YAML "
""""""""""""""""""""
autocmd BufRead,BufNewFile *.yaml set filetype=ansible
autocmd BufRead,BufNewFile *.yaml set filetype=ansible


" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_python_binary_path = '/usr/bin/python2'
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" minibufexpl.vim
map <F2> :MBEToggle<CR>
noremap bn :MBEbn<CR>
noremap bp :MBEbp<CR>
noremap bd :bd<CR>
let g:miniBufExplCycleArround = 1

""""""""""""""""""
" MatchTagAlways "
""""""""""""""""""
nnoremap <leader>% :MtaJumpToOtherTag<cr>
