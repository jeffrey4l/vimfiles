if !has_key(plugs, 'ctrlp.vim') | finish | endif
"""""""""
" CtrlP "
"""""""""
let g:ctrlp_map = '<leader>g'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
    \ 'dir': '\.git$\|\.svn$\|\.tox$\|\.mypy_cache$\|\.envs$',
    \ 'file': '\.pyc$\|\.pyo$'
    \}
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_show_hidden = 1

map <leader>f :CtrlP<CR>
map <leader>b :CtrlPBuffer<CR>
map <leader>t :CtrlPBufTag<CR>

let g:ctrlp_buftag_types = {
  \ 'yaml': '--languages=ansible --ansible-types=t',
  \ 'make': '--languages=make --make-types=tm',
  \ 'markdown': '--language-force=markdown --markdown-types=csStTu',
  \ 'dosini': '--language-force=iniconf --iniconf-types=sk',
  \ 'go': '--language-force=go --go-types=fct'
  \ }
