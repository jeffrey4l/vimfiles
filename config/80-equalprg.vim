au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
au FileType json setlocal equalprg=jq
" require https://github.com/google/yapf
" au FileType python setlocal equalprg=yapf
