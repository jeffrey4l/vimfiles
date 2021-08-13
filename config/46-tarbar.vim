if !has_key(plugs, 'tagbar') | finish | endif

""""""""""""""""
" Tagbar plugin
""""""""""""""""
map <F4> :TagbarToggle<CR>
let g:tagbar_width=30

let g:tagbar_type_ansible = {
	\ 'ctagstype' : 'ansible',
	\ 'kinds' : [
		\ 't:tasks'
	\ ],
	\ 'sort' : 0
\ }
let g:tagbar_type_yaml = {
	\ 'ctagstype' : 'ansible',
	\ 'kinds' : [
		\ 't:tasks'
	\ ],
	\ 'sort' : 0
\ }

let g:tagbar_type_puppet = {
    \ 'ctagstype': 'puppet',
    \ 'kinds': [
        \ 'c:class',
        \ 's:site',
        \ 'n:node',
        \ 'd:definition'
      \ ]
    \ }

let g:tagbar_type_diff = {
    \ 'ctagstype': 'Diff',
    \ 'kinds': [
        \ 'd:deleted:1',
        \ 'h:hunks:1',
        \ 'm:modifiedFile:0',
        \ 'n:newFile:0',
      \ ],
    \ 'sro' : ':',
    \ 'kind2scope': {
        \ 'd': 'deleted',
        \ 'm': 'modifiedFile',
        \ 'n': 'newFile',
    \ },
    \ 'sort' : 1
    \ }

let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
\ }

let g:tagbar_type_terraform = {
    \ 'ctagstype' : 'terraform',
    \ 'kinds' : [
        \ 'r:resources',
        \ 'm:modules',
        \ 'o:outputs',
        \ 'v:variables',
        \ 'f:tfvars'
    \ ],
    \ 'sort' : 0
    \ }

let g:tagbar_type_dosini = {
    \ 'ctagstype' : 'iniconf',
    \ 'kinds' : [
        \ 's:sections',
        \ 'k:keys'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope': {
        \ 's' : 'section'
    \ },
    \ 'sort' : 0
    \ }

let g:tagbar_type_conf = g:tagbar_type_dosini

let g:tagbar_type_rst = {
    \ 'ctagstype' : 'ReStructuredText',
    \ 'kinds' : [
        \ 'c:chapters',
        \ 's:sections',
        \ 'S:subsections',
        \ 't:subsubsections',
        \ 'T:targets'
    \ ],
    \ 'sro' : '»',
    \ 'kind2scope': {
        \ 'c' : 'chapter',
        \ 's' : 'section',
        \ 'S' : 'subsection',
        \ 't' : 'subsubsection'
    \ },
    \ 'sort' : 0
    \ }

" Depends on https://github.com/jszakmeister/markdown2ctags
" can install by
"
"   yaourt -S markdown2ctags
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : '/usr/bin/markdown2ctags',
    \ 'ctagsargs' : '-f - --sort=yes --sro=»',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '»',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }

let g:tagbar_type_pandoc = tagbar_type_markdown

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }
