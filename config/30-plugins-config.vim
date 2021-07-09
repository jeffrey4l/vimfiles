" vim pandoc
let g:pandoc#spell#enabled=0
let g:pandoc#filetypes#pandoc_markdown=0

"YankRing
let g:yankring_history_dir = '$HOME/.vim/'

"""""""""""
" Ack.vim "
"""""""""""
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
elseif executable('ag')
  let g:ackprg = 'ag -a --vimgrep'
endif
nnoremap <Leader>a :Ack<space>
"""""""""""""""
" vim-ripgrep "
"""""""""""""""
let g:rg_highlight='true'


""""""""""""""""""""
" Vim Ansible YAML "
""""""""""""""""""""
autocmd BufRead,BufNewFile *.yaml set filetype=yaml.ansible


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
