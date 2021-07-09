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
let g:fzf_preview_window = ['up:40%', 'ctrl-/']

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)
