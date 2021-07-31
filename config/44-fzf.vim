if !has_key(plugs, 'fzf.vim') | finish | endif
"""""""""""
" FZF.vim "
"""""""""""
map <leader>f :Files<CR>
map <leader>b :Buffers<CR>
map <leader>t :Tags<CR>
map <leader>w :Windows<CR>
map <leader>c :Commits<CR>
map <leader>m :Maps<CR>
map <leader>l :Lines<CR>

let g:fzf_layout = { 'window': 'enew' }
let g:fzf_preview_window = ['right:40%', 'ctrl-/']

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

let g:fzf_tags_command = 'ctags -R --exclude={.tox,.git,.mypy_cache,plugged,.ccls-cache}'
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'


command! -bang -nargs=* GGrep
    \ call fzf#vim#grep(
    \   'git grep --line-number -- '.shellescape(<q-args>), 0,
    \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

let g:fzf_nvim_statusline = 0

let g:airline#extensions#fzf#enabled = 1



" CTRL-A CTRL-Q to select all and build quickfix list

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'
