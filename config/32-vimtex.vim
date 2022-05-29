let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
"let g:vimtex_view_method = 'zathura'

let g:vimtex_view_general_viewer="evince"

let maplocalleader = ","

" set conceallevel=0
let g:tex_conceal='abdmg'
" 对中文的支持
let g:Tex_CompileRule_pdf = 'xelatex -synctex=1 --interaction=nonstopmode $*'
