for file in split(glob('~/.vim/config/*.vim'), '\n')
    exe 'source' file
endfor
