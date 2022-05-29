function ConfigNVIMComment()
lua <<EOF
  require('nvim_comment').setup()
EOF
endfunction

function ConfigNerdCommenter()
  " https://github.com/preservim/nerdcommenter
  let g:NERDCreateDefaultMappings = 0
  let g:NERDCompactSexyComs = 1

  map <leader>cc <plug>NERDCommenterToggle
  map <leader>cs <plug>NERDCommenterSexy
endfunction

if has_key(plugs, 'nvim-comment')
  call ConfigNVIMComment()
endif

if has_key(plugs, 'nerdcommenter')
  call ConfigNerdCommenter()
endif
