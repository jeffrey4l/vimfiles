" require https://github.com/google/yapf
autocmd FileType python nnoremap <Leader>= :0,$!yapf<CR>

" vim-isort
let g:vim_isort_config_overrides = {
  \ 'include_trailing_comma': 1,
  \ 'force_single_line': 'true'
  \ }
