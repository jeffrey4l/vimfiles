""""""""""""""""""""""""
" Global Configuration "
""""""""""""""""""""""""
" Valid Options: [ nerdtree, nvim-tree, no ]
let g:tree_plugin = 'nerdtree'
" Valid Options: [ fzf, ctrlp, no ]
let g:fuzz_plugin = 'fzf'


call plug#begin('~/.vim/plugged')
"""""""""""""""
" colorschema "
"""""""""""""""
if has('nvim')
  Plug 'tanvirtin/monokai.nvim'
  Plug 'folke/tokyonight.nvim', {'branch': 'main'}
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
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
" Plug 'rafael84/vim-wsd'
if has('nvim')
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'nvim-treesitter/nvim-treesitter-refactor'
	Plug 'nvim-treesitter/playground'
else
	Plug 'sheerun/vim-polyglot'
endif

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
  Plug 'kyazdani42/nvim-tree.lua'
else
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeTabsToggle' }
	Plug 'jistr/vim-nerdtree-tabs'
endif

"""""""""""
" Outline "
"""""""""""
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
" Plug 'rbgrouleff/bclose.vim'

""""""""""""
" markdown "
""""""""""""
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

""""""""""
" Editor "
""""""""""
Plug 'Valloric/MatchTagAlways'
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/The-NERD-Commenter'
Plug 'vim-scripts/YankRing.vim'
if has('nvim')
  Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
  " FiXME: not work with fzf
  " Plug 'dstein64/nvim-scrollview'
  Plug 'romgrk/barbar.nvim'
  Plug 'romgrk/doom-one.vim'
  " Plug 'akinsho/nvim-bufferline.lua'
endif

"""""""""""""""
" Status Line "
"""""""""""""""
Plug 'vim-airline/vim-airline'

if fuzz_plugin == 'ctrlp'
  Plug 'ctrlpvim/ctrlp.vim'
elseif fuzz_plugin == 'fzf'
  Plug 'junegunn/fzf.vim'
endif


"""""""""""
" Snippet "
"""""""""""
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"""""""
" git "
"""""""
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb'

Plug 'vim-scripts/toggle_mouse'

"""""""""""
" coc.vim "
"""""""""""
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
Plug 'neoclide/coc-git', {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'}
Plug 'neoclide/coc-json', {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'}
Plug 'neoclide/coc-snippets', {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'}
Plug 'neoclide/coc-solargraph', {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'}
Plug 'neoclide/coc-yaml', {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'}
Plug 'neoclide/coc-yank', {'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build'}

" Plug 'w0rp/ale'
" Plug 'rhysd/vim-grammarous'

call plug#end()
