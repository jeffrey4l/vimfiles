"YankRing

let g:yankring_history_dir = '$HOME/.vim/'

""""""""""""""""
" Tagbar plugin
""""""""""""""""
map <F4> :TagbarToggle<CR>
let g:tagbar_width=30

""""""""""
" vim-go "
""""""""""
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"

"""""""
" ale "
"""""""
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

let g:ale_linters = {
\  'go': ['gofmt', 'golangci-lint'],
\  'python': ['pyflakes', 'pycodestyle', 'flake8'],
\ }

let g:ale_go_golangci_lint_options = '--fast'
let g:ale_go_gometalinter_options = '--fast'

let g:ale_fixers = {
\  'javascript': ['eslint'],
\  'python': ['autopep8', 'yapf']  
\}

let g:ale_completion_enabled = 0
let g:ale_python_pyls_use_global = 1
let g:ale_go_langserver_executable = $HOME.'/.golang/bin/go-langserver'

let g:ale_python_pyls_config = {
\   'pyls': {
\     'plugins': {
\       'pydocstyle': {
\         'enabled': v:false
\       }
\     }
\   },
\ }

let g:ale_yaml_yamllint_options = '-c '.$HOME.'/.config/yamllint/config'

"""""""""""
" Ack.vim "
"""""""""""
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
elseif executable('ag')
  let g:ackprg = 'ag -a --vimgrep'
endif
nnoremap <Leader>a :Ack<space>

""""""""""""""""""""""""""""
" NERD_tree
""""""""""""""""""""""""""""""
let NERDTreeIgnore= ['\~$','.*\.pyc','.*\.pyo', '^tags$', 'cscope', 
                    \ '.*\.egg-info$', '.*\.egg$', '__pycache__']
let NERDTreeMinimalUI=1

nmap <F2> :NERDTreeTabsFind<CR>
nmap <F3> :NERDTreeTabsToggle<CR>
if has('gui_running')
  let g:NERDTreeHijackNetrw=0
  " vim-nerdtree-tags plugin
  let g:nerdtree_tabs_open_on_gui_startup=0
else
  let g:NERDTreeHijackNetrw=1
endif
let g:nerdtree_tabs_focus_on_files = 1
let g:nerdtree_tabs_open_on_console_startup = 2
let g:nerdtree_tabs_autofind = 0


"""""""""
" CtrlP "
"""""""""
let g:ctrlp_map = '<leader>g'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
    \ 'dir': '\.git$\|\.svn$|\.tox$',
    \ 'file': '\.pyc$\|\.pyo$'
    \}
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_show_hidden = 1
map <leader>b :CtrlPBuffer<CR>

map <leader>f :FZF<CR>

""""""""""""""""""""
" Vim Ansible YAML "
""""""""""""""""""""
autocmd BufRead,BufNewFile *.yaml set filetype=yaml.ansible


" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_python_binary_path = '/usr/bin/python2'
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1
let g:ycm_log_level = 'debug'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

""""""""""""""""""
" MatchTagAlways "
""""""""""""""""""
nnoremap <leader>% :MtaJumpToOtherTag<cr>

" nerd comment
let NERDRemoveExtraSpaces=1
let NERDSpaceDelims=1
