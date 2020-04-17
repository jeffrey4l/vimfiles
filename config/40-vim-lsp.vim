let g:lsp_diagnostics_enabled = 1

let g:lsp_highlights_enabled = 0
let g:lsp_textprop_enabled = 0

imap <c-space> <Plug>(asyncomplete_force_refresh)
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" map <C-]> :LspDefinition<cr>
" map <c-[> :LspPeekDefinition<cr>
" https://github.com/prabirshrestha/vim-lsp#supported-commands
map <leader>d :LspDefinition<cr>
map <leader>h :LspHover<cr>
map <leader>u :LspReferences<cr>
autocmd FileType python,go nmap gd <plug>(lsp-definition)
" map <leader>f :LspDocumentFormat<cr>

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

" FIXME(jeffrey4l): This doesn't work now.
if executable('mspyls1')
    " pip install microsoft-python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'mspyls',
        \ 'cmd': {server_info->['mspyls']},
        \ 'whitelist': ['python'],
        \ })
endif

if executable('go-langserver')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'go-langserver',
        \ 'cmd': {server_info->['go-langserver', '-gocodecompletion']},
        \ 'whitelist': ['go'],
        \ })
    autocmd BufWritePre *.go LspDocumentFormatSync
endif

" if executable('bash-language-server')
"   au User lsp_setup call lsp#register_server({
"         \ 'name': 'bash-language-server',
"         \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
"         \ 'whitelist': ['sh'],
"         \ })
" endif

" if executable('gopls')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'gopls',
"         \ 'cmd': {server_info->['gopls', '-mode', 'stdio']},
"         \ 'whitelist': ['go'],
"         \ })
"     autocmd BufWritePre *.go LspDocumentFormatSync
" endif

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'whitelist': ['*'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))

" call asyncomplete#register_source(asyncomplete#sources#gocode#get_source_options({
"     \ 'name': 'gocode',
"     \ 'whitelist': ['go'],
"     \ 'completor': function('asyncomplete#sources#gocode#completor'),
"     \ }))

if has('python3')
    let g:UltiSnipsExpandTrigger="<tab>"
    call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        \ 'name': 'ultisnips',
        \ 'whitelist': ['*'],
        \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        \ }))
endif


" if executable('jdtls')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'eclipse.jdt.ls',
"         \ 'cmd': {server_info->['jdtls']},
"         \ 'whitelist': ['java'],
"         \ })
" endif
if executable('solargraph')
    " gem install solargraph
    au User lsp_setup call lsp#register_server({
        \ 'name': 'solargraph',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
        \ 'initialization_options': {"diagnostics": "true"},
        \ 'whitelist': ['ruby'],
        \ })
endif
