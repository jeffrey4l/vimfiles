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

let g:tagbar_type_git = g:tagbar_type_diff

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
let g:tagbar_type_ansible_hosts = g:tagbar_type_dosini

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
let g:tagbar_type_markdown_disable = {
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

let g:tagbar_type_markdown = {
  \ 'ctagstype'	: 'markdown',
  \ 'kinds'		: [
    \ 'c:chapter:0:1',
    \ 's:section:0:1',
    \ 'S:subsection:0:1',
    \ 't:subsubsection:0:1',
    \ 'T:l4subsection:0:1',
    \ 'u:l5subsection:0:1',
  \ ],
  \ 'sro'			: '""',
  \ 'kind2scope'	: {
    \ 'c' : 'chapter',
    \ 's' : 'section',
    \ 'S' : 'subsection',
    \ 't' : 'subsubsection',
    \ 'T' : 'l4subsection',
  \ },
  \ 'scope2kind'	: {
    \ 'chapter' : 'c',
    \ 'section' : 's',
    \ 'subsection' : 'S',
    \ 'subsubsection' : 't',
    \ 'l4subsection' : 'T',
  \ },
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

function JsonFile()
  let g:tagbar_type_json = {
      \ 'ctagstype' : 'json',
      \ 'kinds' : [
        \ 'o:objects', 'a:arrays', 'n:numbers', 's:strings', 'b:booleans', 'z:nulls'
      \ ],
      \ 'sro' : '.',
      \ 'scope2kind': {
        \ 'object': 'o',
        \ 'array': 'a',
        \ 'number': 'n',
        \ 'string': 's',
        \ 'boolean': 'b',
        \ 'null': 'z'
      \ },
      \ 'kind2scope': {
        \ 'o': 'object',
        \ 'a': 'array',
        \ 'n': 'number',
        \ 's': 'string',
        \ 'b': 'boolean',
        \ 'z': 'null'
      \ },
      \ 'sort' : 0
    \ }
endfunction

" only handle json file less than 1K
autocmd BufReadPre * if getfsize(expand('%')) < 1024 | call JsonFile() | endif

let g:tagbar_type_jsonnet = {
    \ 'ctagstype' : 'jsonnet',
    \ 'kinds'     : [
        \ 'f:function', 'm:member', 'v:variable'
    \ ],
\ }

let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }

let g:tagbar_type_yang = {
\ 'ctagstype' : 'yang',
    \ 'kinds'     : [
        \ 'm:Modules',
        \ 'i:Imports',
        \ 'x:Includes',
        \ 'y:Identities',
        \ 'f:Features',
        \ 't:Types',
        \ 'g:Groupings',
        \ 'n:Notifications'
    \ ]
\ }
