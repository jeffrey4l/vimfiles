call plug#begin('~/.vim/plugged')

" colorschema
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
Plug 'frazrepo/vim-rainbow'
Plug 'easymotion/vim-easymotion'
Plug 'will133/vim-dirdiff'
if has('nvim')
  Plug 'yamatsum/nvim-cursorline'
endif

" search plugin
Plug 'mileszs/ack.vim'
Plug 'jremmen/vim-ripgrep'

" cscope maps
Plug 'chazy/cscope_maps'

" quickfix window
Plug 'tpope/vim-unimpaired'

" python
Plug 'jmcantrell/vim-virtualenv'
Plug 'fisadev/vim-isort'

" syntax
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'sukima/vim-tiddlywiki'
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
	Plug 'ryanoasis/vim-devicons'
	" Plug 'kyazdani42/nvim-web-devicons'
else
	Plug 'ryanoasis/vim-devicons'
endif


"Plug 'fatih/vim-go', { 'tag': '*', 'do': ':GoInstallBinaries' }
"Plug 'fatih/vim-go'
Plug 'tpope/vim-speeddating'
Plug 'pearofducks/ansible-vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'posva/vim-vue'

if has('nvim')
	Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'
else
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeTabsToggle' }
	Plug 'jistr/vim-nerdtree-tabs'
endif
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
" Plug 'francoiscabrol/ranger.vim'
" neovim only ?
Plug 'rbgrouleff/bclose.vim'

" markdown
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" auto complete
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --gocode-completer' }
"Plug 'zxqfl/tabnine-vim'

Plug 'vim-scripts/The-NERD-Commenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf.vim'

" syntax check
Plug 'w0rp/ale'
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
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }

" fcitx
Plug 'rlue/vim-barbaric'

" fast fold
Plug 'Konfekt/FastFold'

call plug#end()
