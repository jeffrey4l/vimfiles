"""""""""""
" Ack.vim "
"""""""""""
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
elseif executable('ag')
  let g:ackprg = 'ag -a --vimgrep'
endif
nnoremap <Leader>a :Ack!<space>
