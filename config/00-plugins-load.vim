call plug#begin('~/.vim/plugged')

" colorschema
Plug 'tomasr/molokai'

" edit plugin
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/YankRing.vim'
Plug 'tpope/vim-repeat'
Plug 'Valloric/MatchTagAlways'

" search plugin
Plug 'mileszs/ack.vim'

" cscope maps
Plug 'chazy/cscope_maps'

" quickfix window
Plug 'tpope/vim-unimpaired'

" python
Plug 'jmcantrell/vim-virtualenv'

" syntax
Plug 'ekalinin/Dockerfile.vim'
"Plug 'fatih/vim-go', { 'tag': '*', 'do': ':GoInstallBinaries' }
Plug 'fatih/vim-go'
Plug 'tpope/vim-speeddating'
Plug 'pearofducks/ansible-vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'posva/vim-vue'

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'lvht/tagbar-markdown'

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --gocode-completer' }
Plug 'vim-scripts/The-NERD-Commenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'

" syntax check
Plug 'w0rp/ale'
Plug 'rhysd/vim-grammarous'

Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"Plug 'fholgado/minibufexpl.vim'

" git wrapper
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb'

Plug 'vim-scripts/toggle_mouse'
"Plug 'rhysd/clever-f.vim'

"Plug 'lilydjwg/fcitx.vim'

call plug#end()
