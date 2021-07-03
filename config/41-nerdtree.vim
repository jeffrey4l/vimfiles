if !has_key(plugs, 'nerdtree')
  finish
endif
""""""""""""""""""""""""""""
" NERD_tree
""""""""""""""""""""""""""""""
let NERDTreeIgnore= ['\~$','.*\.pyc','.*\.pyo', '^tags$', 'cscope',
                    \ '__pycache__']
let NERDTreeMinimalUI=1

nmap <F2> :NERDTreeTabsFind<CR>
nmap <F3> :NERDTreeTabsToggle<CR>
if has('gui_running')
  let g:NERDTreeHijackNetrw=0
  " vim-nerdtree-tags plugin
  let g:nerdtree_tabs_open_on_gui_startup=0
else
  let g:NERDTreeHijackNetrw=0
  let g:ranger_replace_netrw = 0
endif
let g:nerdtree_tabs_focus_on_files = 1
let g:nerdtree_tabs_open_on_console_startup = 2
let g:nerdtree_tabs_autofind = 0
