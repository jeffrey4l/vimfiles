call plug#begin('~/.vim/plugged')

" molokai colorschema
Plug 'tomasr/molokai'

" edit plugin
Plug 'tpope/vim-surround'

" Ack plugin
Plug 'mileszs/ack.vim'

" cscope maps
Plug 'chazy/cscope_maps'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Tagbar'

Plug 'fatih/vim-go', { 'tag': '*', 'do': ':GoInstallBinaries' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'The-NERD-Commenter'
Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'vim-airline/vim-airline'

Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'fholgado/minibufexpl.vim'

Plug 'tpope/vim-fugitive'

Plug 'chase/vim-ansible-yaml'

Plug 'toggle_mouse'

call plug#end()
