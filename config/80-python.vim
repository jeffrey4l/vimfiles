" require https://github.com/google/yapf
"au FileType python setlocal equalprg=yapf

" vim-isort
let g:vim_isort_config_overrides = {
  \ 'include_trailing_comma': 1,
  \ 'force_single_line': 'true'
  \ }
