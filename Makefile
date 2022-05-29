install:
	vim +PlugInstall +qall

update:
	vim +PlugUpdate +qall

update-plug:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

install-go-binaries:
	go get -v golang.org/x/tools/cmd/guru
	go get -v github.com/golang/lint/golint
	go get -v github.com/davidrjenni/reftools/cmd/fillstruct
	go get -v github.com/rogpeppe/godef
	go get -v github.com/fatih/motion
	go get -v github.com/kisielk/errcheck
	go get -v github.com/nsf/gocode
	go get -v github.com/josharian/impl
	go get -v golang.org/x/tools/cmd/goimports
	go get -v github.com/fatih/gomodifytags
	go get -v github.com/dominikh/go-tools/cmd/keyify
