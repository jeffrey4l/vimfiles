" support python3 only
if has('python3')
endif
for file in split(glob('~/.vim/config/*.vim'), '\n')
    exe 'source' file
endfor
