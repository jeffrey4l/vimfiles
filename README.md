# Requirements

* Vim 7.4.1578+ (required by YouCompleteMe)
* [the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
* ctags
* cscope
* powerline-fonts
* [markdown2ctags](https://github.com/jszakmeister/markdown2ctags)

# Installation

```bash
git clone https://github.com/jeffrey4l/vimfiles.git ~/.vim
ln -s ~/.vim/init.vim ~/.vimrc
cd ~/.vim
make

# install YouCompleteMe
cd ~/.vim/plugged/YouCompleteMe/
python install.py
```

# Install for Archlinux

```bash
pacman -S ctags the_silver_searcher cscope powerline-fonts
yaourt -S markdown2ctags

# for golang
yaourt -S gotags
```
