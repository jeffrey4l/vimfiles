if !has_key(plugs, 'vim-mundo') | finish | endif
let g:undotree_WindowLayout=3
let g:undotree_ShortIndicators=1
nnoremap <F5> :MundoToggle<CR>
