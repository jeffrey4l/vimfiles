call plug#begin('~/.vim/plugged')

" colorschema
Plug 'tomasr/molokai'

" edit plugin
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'

" search plugin
Plug 'mileszs/ack.vim'

" cscope maps
Plug 'chazy/cscope_maps'

" syntax
Plug 'ekalinin/Dockerfile.vim'
Plug 'fatih/vim-go', { 'tag': '*', 'do': ':GoInstallBinaries' }
Plug 'tpope/vim-speeddating'
Plug 'chase/vim-ansible-yaml'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Tagbar'

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'The-NERD-Commenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'

" syntax check
Plug 'w0rp/ale'

Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'fholgado/minibufexpl.vim'

Plug 'tpope/vim-fugitive'

Plug 'toggle_mouse'

call plug#end()
