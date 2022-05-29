if !has_key(plugs, 'vim-chalk') | finish | endif
set foldmethod=marker

let g:chalk_char = "."       " The character used as padding
                             " when aligning markers

" Files for which to add a space between the marker and the current text
au BufRead,BufNewFile *.vim let b:chalk_space_before = 1


" Create fold at visual selection
vmap zf <Plug>Chalk
" Create fold at operator movement
nmap zf <Plug>Chalk
" Create fold for specified number of lines
nmap zF <Plug>ChalkRange

" Create single (opening) fold marker at current level or specified count
nmap Zf <Plug>SingleChalk
" Create single (opening) fold marker at next levelor specified count
nmap ZF <Plug>SingleChalkUp


" Increment current fold level
nmap =z <Plug>ChalkUp
" Decrement current fold level
nmap -z <Plug>ChalkDown
" Increment levels in selection
vmap =z <Plug>ChalkUp
" Decrement levels in selection
vmap -z <Plug>ChalkDown
