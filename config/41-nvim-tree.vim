if !has_key(plugs, 'nvim-tree.lua')
  finish
endif

let g:nvim_tree_ignore = [
    \ '.git',
    \ 'node_modules',
    \ '.cache',
    \ '.envs' ]

nnoremap <F2> :NvimTreeToggle<CR>
nnoremap <F3> :NvimTreeFindFile<CR>

let g:nvim_tree_icon_padding = ' '
let g:nvim_tree_gitignore = 1
let g:nvim_tree_git_hl = 1
let g:nvim_tree_add_trailing = 1
let g:nvim_tree_hide_dotfiles = 1
let g:nvim_tree_group_empty = 1
set termguicolors
" highlight NvimTreeFolderIcon guibg=blue
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': ''
    \ }

lua <<EOF
    local tree_cb = require'nvim-tree.config'.nvim_tree_callback
    -- default mappings
    vim.g.nvim_tree_bindings = {
      { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
      { key = {"<2-RightMouse>", "<C-]>", "C"},    cb = tree_cb("cd") },
      { key = "v",                        cb = tree_cb("vsplit") },
      { key = "s",                        cb = tree_cb("split") },
      { key = "<C-t>",                        cb = tree_cb("tabnew") },
      { key = "<",                            cb = tree_cb("prev_sibling") },
      { key = ">",                            cb = tree_cb("next_sibling") },
      { key = "P",                            cb = tree_cb("parent_node") },
      { key = "x",                         cb = tree_cb("close_node") },
      { key = "<S-CR>",                       cb = tree_cb("close_node") },
      { key = "<Tab>",                        cb = tree_cb("preview") },
      { key = "K",                            cb = tree_cb("first_sibling") },
      { key = "J",                            cb = tree_cb("last_sibling") },
      { key = "I",                            cb = tree_cb("toggle_ignored") },
      { key = "H",                            cb = tree_cb("toggle_dotfiles") },
      { key = "R",                            cb = tree_cb("refresh") },
      { key = "a",                            cb = tree_cb("create") },
      { key = "d",                            cb = tree_cb("remove") },
      { key = "r",                            cb = tree_cb("rename") },
      { key = "<C-r>",                        cb = tree_cb("full_rename") },
      { key = "X",                            cb = tree_cb("cut") },
      { key = "c",                            cb = tree_cb("copy") },
      { key = "p",                            cb = tree_cb("paste") },
      { key = "y",                            cb = tree_cb("copy_name") },
      { key = "Y",                            cb = tree_cb("copy_path") },
      { key = "gy",                           cb = tree_cb("copy_absolute_path") },
      { key = "[c",                           cb = tree_cb("prev_git_item") },
      { key = "]c",                           cb = tree_cb("next_git_item") },
      { key = "u",                            cb = tree_cb("dir_up") },
      { key = "q",                            cb = tree_cb("close") },
      { key = "g?",                           cb = tree_cb("toggle_help") },
    }
EOF
