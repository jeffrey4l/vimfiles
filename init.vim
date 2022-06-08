" support python3 only
if has('python3')
endif

source $HOME/.vim/function.vim

for file in split(glob('$HOME/.vim/config/*.vim'), '\n')
    exe 'source' file
endfor
