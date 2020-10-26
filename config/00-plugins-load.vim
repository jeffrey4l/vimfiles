call plug#begin('~/.vim/plugged')

" colorschema
Plug 'tomasr/molokai'

" edit plugin
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/YankRing.vim'
Plug 'tpope/vim-repeat'
Plug 'Valloric/MatchTagAlways'
Plug 'frazrepo/vim-rainbow'

" search plugin
Plug 'mileszs/ack.vim'
Plug 'jremmen/vim-ripgrep'

" cscope maps
Plug 'chazy/cscope_maps'

" quickfix window
Plug 'tpope/vim-unimpaired'

" python
Plug 'jmcantrell/vim-virtualenv'

" syntax
Plug 'ekalinin/Dockerfile.vim'
Plug 'rodjek/vim-puppet'
Plug 'jelera/vim-javascript-syntax'
Plug 'posva/vim-vue'
Plug 'google/vim-jsonnet'

"Plug 'fatih/vim-go', { 'tag': '*', 'do': ':GoInstallBinaries' }
Plug 'fatih/vim-go'
Plug 'tpope/vim-speeddating'
Plug 'pearofducks/ansible-vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'posva/vim-vue'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeTabsToggle' }
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

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
Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}

call plug#end()
