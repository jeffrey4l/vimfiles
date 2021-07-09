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
  Plug 'folke/tokyonight.nvim'
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
Plug 'sukima/vim-tiddlywiki'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
" Plug 'rafael84/vim-wsd'
if has('nvim')
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'nvim-treesitter/nvim-treesitter-refactor'
	Plug 'nvim-treesitter/playground'
	Plug 'stsewd/sphinx.nvim', { 'do': ':UpdateRemotePlugins' }
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
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/The-NERD-Commenter'
Plug 'vim-scripts/YankRing.vim'
if has('nvim')
  Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
  " FiXME: not work with fzf
  " Plug 'dstein64/nvim-scrollview'
  Plug 'romgrk/barbar.nvim'
  Plug 'romgrk/doom-one.vim'
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

" syntax check
" Plug 'w0rp/ale'
" Plug 'rhysd/vim-grammarous'

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

""""""""""""""""""
" lanuage server "
""""""""""""""""""
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fannheyward/coc-pyright', { 'do': 'yarn install --frozen-lockfile && yarn build' }
Plug 'josa42/coc-go', { 'tag': '*', 'do': 'yarn install --frozen-lockfile && yarn build' }
call plug#end()

let g:scrollview_hide_on_intersect = 1
