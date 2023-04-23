autocmd BufNewFile,BufRead *
  \ if getline(1) =~ '$ANSIBLE_VAULT;.*;AES256'     |
  \   execute '%! ansible-vault decrypt --output -' |
  \ endif

""""""""""""""""""""
" Vim Ansible YAML "
""""""""""""""""""""
autocmd BufRead,BufNewFile *.yaml set filetype=yaml.ansible


let g:tagbar_type_ansible = {
	\ 'ctagstype' : 'ansible',
	\ 'kinds' : [
		\ 't:tasks'
	\ ],
	\ 'sort' : 0
\ }
let g:tagbar_type_yaml = {
	\ 'ctagstype' : 'ansible',
	\ 'kinds' : [
		\ 't:tasks'
	\ ],
	\ 'sort' : 0
\ }
