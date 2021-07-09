" Valid Option: [ nerdtree, nvim-tree ]
let g:tree_plugin = 'nerdtree'

call plug#begin('~/.vim/plugged')

"""""""""""""""
" colorschema "
"""""""""""""""
if has('nvim')
  Plug 'tanvirtin/monokai.nvim'
  Plug 'folke/tokyonight.nvim'
endif
Plug 'tomasr/molokai'

" edit plugin
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/YankRing.vim'
Plug 'tpope/vim-repeat'
Plug 'Valloric/MatchTagAlways'
Plug 'easymotion/vim-easymotion'
if has('nvim')
  Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
  Plug 'dstein64/nvim-scrollview'
  " Plug 'romgrk/barbar.nvim'
endif

" search plugin
Plug 'mileszs/ack.vim'
Plug 'jremmen/vim-ripgrep'

" quickfix window
Plug 'tpope/vim-unimpaired'

" python
Plug 'jmcantrell/vim-virtualenv'
Plug 'fisadev/vim-isort'

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
else
	Plug 'sheerun/vim-polyglot'
endif
if has('nvim')
	Plug 'stsewd/sphinx.nvim', { 'do': ':UpdateRemotePlugins' }
endif
"""""""""
" icons "
"""""""""
if has('nvim')
	Plug 'kyazdani42/nvim-web-devicons'
else
	Plug 'ryanoasis/vim-devicons'
endif


Plug 'tpope/vim-speeddating'
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
" neovim only ?
Plug 'rbgrouleff/bclose.vim'

" markdown
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'vim-scripts/The-NERD-Commenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf.vim'

" syntax check
" Plug 'w0rp/ale'
Plug 'rhysd/vim-grammarous'

" Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"Plug 'fholgado/minibufexpl.vim'

" git wrapper
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb'

Plug 'vim-scripts/toggle_mouse'
"Plug 'rhysd/clever-f.vim'
"

" lanuage server
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fannheyward/coc-pyright', {
  \ 'do': 'yarn install --frozen-lockfile && yarn build'
  \ }
Plug 'josa42/coc-go', {
  \ 'tag': '*',
  \ 'do': 'yarn install --frozen-lockfile && yarn build'
  \ }

" fcitx
Plug 'rlue/vim-barbaric'

" fast fold
Plug 'Konfekt/FastFold'

call plug#end()
