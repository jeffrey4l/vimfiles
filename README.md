# Requirements

* Vim 7.4.1578+ (required by YouCompleteMe)
* [the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
* ctags
* cscope
* powerline-fonts

# Installation

    git clone https://github.com/jeffrey4l/vimfiles.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~/.vim
    make

    # install YouCompleteMe
    cd ~/.vim/plugged/YouCompleteMe/
    python install.py

# Install for Archlinux

    pacman -S ctags the_silver_searcher cscope powerline-fonts
