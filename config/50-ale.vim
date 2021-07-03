"""""""
" ale "
"""""""
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

let g:ale_linters = {
\  'go': ['gofmt', 'golangci-lint'],
\  'python': ['flake8', 'pycodestyle', 'mypy', 'bandit'],
\  'json': ['jq']
\ }

let g:ale_go_golangci_lint_options = '--fast'
let g:ale_go_golangci_lint_package = 1

let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['eslint'],
\  'python': ['black', 'isort', 'yapf'],
\  'json': ['jq']
\}

let g:ale_completion_enabled = 0
let g:ale_python_pyls_use_global = 1
let g:ale_go_langserver_executable = $HOME.'/.golang/bin/go-langserver'

let g:ale_python_pyls_config = {
\   'pyls': {
\     'plugins': {
\       'pydocstyle': {
\         'enabled': v:false
\       }
\     }
\   },
\ }

let g:ale_yaml_yamllint_options = '-c '.$HOME.'/.config/yamllint/config'


let b:ale_python_flake8_options = '--max-line-length=120 --ignore=E265,E266,501'
let g:ale_python_pycodestyle_options = '--max-line-length=120'


let g:ale_python_mypy_options = '--ignore-missing-imports'

let g:ale_python_bandit_options = '-ll'

let g:ale_python_black_options = '--skip-string-normalization --skip-magic-trailing-comma --fast --line-length 120'

let g:ale_fix_on_save = 0
let g:ale_disable_lsp = 1

map <F8> :ALEFix<cr>
