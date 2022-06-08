""""""""""""""""""""""""
" Global Configuration "
""""""""""""""""""""""""
" Valid Options: [ nerdtree, nvim-tree, no ]
let g:tree_plugin = 'nerdtree'
"let g:tree_plugin = 'nvim-tree'
" Valid Options: [ fzf, ctrlp, no ]
let g:fuzz_plugin = 'fzf'
" Valid Options: [ nvim-comment, nerdcommenter ]
let g:commenter = 'nerdcommenter'
" Valid Options: [ monokai, doom-one ]
if !exists("g:colorschema")
  "let g:colorschema = 'tokyonight'
  "let g:colorschema = 'OceanicNext'
  let g:rehash256 = 1
  if &diff
    let g:colorschema = 'molokai-transparent'
  else
    let g:colorschema = 'molokai'
  endif
endif


call plug#begin('~/.vim/plugged')
"""""""""""""""
" colorschema "
"""""""""""""""
if g:colorschema == 'doom-one'
  Plug 'romgrk/doom-one.vim'
elseif g:colorschema == 'tokyonight'
  Plug 'folke/tokyonight.nvim', {'branch': 'main'}
elseif g:colorschema == 'OceanicNext'
  Plug 'mhartington/oceanic-next'
elseif g:colorschema == 'monokai'
  Plug 'sickill/vim-monokai'
endif
Plug 'tomasr/molokai'

"""""""""""""""""""
" quickfix window "
"""""""""""""""""""
Plug 'tpope/vim-unimpaired'

""""""""""
" syntax "
""""""""""
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'cespare/vim-toml'
Plug 'fatih/vim-go'
Plug 'vim-python/python-syntax'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
Plug 'sukima/vim-tiddlywiki'
" Plug 'rafael84/vim-wsd'
if has('nvim')
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'nvim-treesitter/nvim-treesitter-refactor'
	Plug 'nvim-treesitter/playground'
else
	Plug 'sheerun/vim-polyglot'
endif
Plug 'google/vim-jsonnet'
Plug 'sedan07/vim-mib'
Plug 'pangloss/vim-javascript'
Plug 'nathanalderson/yang.vim'
Plug 'lervag/vimtex'

"""""""""
" icons "
"""""""""
if has('nvim')
	Plug 'kyazdani42/nvim-web-devicons'
else
	Plug 'ryanoasis/vim-devicons'
endif

Plug 'pearofducks/ansible-vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'posva/vim-vue'

""""""""
" tree "
""""""""
if has('nvim') && tree_plugin == "nvim-tree"
  Plug 'kyazdani42/nvim-tree.lua', {'tag': '*' }
else
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeTabsToggle' }
	Plug 'jistr/vim-nerdtree-tabs'
endif

"""""""""""
" Outline "
"""""""""""
" Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'majutsushi/tagbar'
" Plug 'rbgrouleff/bclose.vim'

""""""""""""
" markdown "
""""""""""""
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'tpope/vim-markdown'

""""""""""
" Editor "
""""""""""
Plug 'simnalamburt/vim-mundo'
Plug 'Valloric/MatchTagAlways'
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'

if has('nvim') && commenter == 'nvim-comment'
  Plug 'terrortylor/nvim-comment'
elseif commenter == 'nerdcommenter'
  Plug 'preservim/nerdcommenter'
endif

Plug 'vim-scripts/YankRing.vim'
if has('nvim')
  Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
  " FiXME: not work with fzf
  " Plug 'dstein64/nvim-scrollview'
  " Plug 'romgrk/barbar.nvim'
  " Plug 'akinsho/nvim-bufferline.lua'
endif
Plug 'lilydjwg/fcitx.vim'
let g:fcitx5_remote = '/usr/bin/fcitx5-remote'

Plug 'reedes/vim-pencil'
" Better fold markers
" Plug 'dbmrq/vim-chalk'

"""""""""""""""
" Status Line "
"""""""""""""""
Plug 'vim-airline/vim-airline'

if fuzz_plugin == 'ctrlp'
  Plug 'ctrlpvim/ctrlp.vim'
elseif fuzz_plugin == 'fzf'
  Plug 'junegunn/fzf.vim'
endif
Plug 'junegunn/vim-peekaboo'
let g:peekaboo_compact=1
let g:peekaboo_window='vert bo 50new'


"""""""""""
" Snippet "
"""""""""""
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"""""""
" git "
"""""""
Plug 'tpope/vim-fugitive', Cond(!&diff, {'tag': '*'})
Plug 'airblade/vim-gitgutter', Cond(!&diff)

Plug 'tpope/vim-rhubarb'
Plug 'hotwatermorning/auto-git-diff'
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-CountJump'
Plug 'inkarkat/vim-ConflictMotions'

Plug 'vim-scripts/toggle_mouse'

" Trigger by `vimdiff -c ':let g:diffchar=1'`
Plug 'rickhowe/diffchar.vim', Cond(exists('g:diffchar'))
set diffopt+=internal,algorithm:patience

"""""""""""
" coc.vim "
"""""""""""
if !exists('g:vscode')
  Plug 'neoclide/coc.nvim', {
        \ 'branch': 'release'}
  Plug 'fannheyward/coc-pyright', {
        \ 'do': 'yarn install --frozen-lockfile && yarn build',
        \ 'for': 'python' }
  Plug 'iamcco/coc-vimlsp', {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'}
  Plug 'josa42/coc-go', {
        \ 'tag': '*',
        \ 'for': 'go',
        \ 'do': 'yarn install --frozen-lockfile && yarn build'}
  Plug 'fannheyward/coc-sql', {'do': 'yarn install --frozen-lockfile && yarn build'}
  Plug 'kkiyama117/coc-toml', {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'}
  Plug 'josa42/coc-sh', {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'}
  " disable coc-git plugin in diff mode
  Plug 'neoclide/coc-git', Cond(!&diff, {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'})
  " Plug 'neoclide/coc-json', {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'}
  Plug 'neoclide/coc-snippets', {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'}
  " Plug 'neoclide/coc-solargraph', {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'}
  " Plug 'neoclide/coc-yaml', {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'}
  Plug 'neoclide/coc-yank', {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'}
  " Plug 'clangd/coc-clangd', {'do': 'yarn install --frozen-lockfile && yarn build'}
  " Plug 'neoclide/coc-css', {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'}
  Plug 'neoclide/coc-tsserver', {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'}
  Plug 'yaegassy/coc-esbonio', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-vimtex', {'do': 'yarn install --frozen-lockfile'}
endif

" Plug 'w0rp/ale'
" Plug 'rhysd/vim-grammarous'
Plug 'mileszs/ack.vim'

"""""""""""""""""
" Time Tracking "
"""""""""""""""""
" Plug 'wakatime/vim-wakatime'

call plug#end()

let g:auto_git_diff_show_window_at_right=1

let g:python_highlight_all = 1
