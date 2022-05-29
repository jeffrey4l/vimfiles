if !has_key(plugs, 'nvim-tree.lua')
  finish
endif

let g:nvim_tree_ignore = [
    \ '.cache',
    \ '.envs',
    \ '.git',
    \ '__pycache__',
    \ 'node_modules',
    \ ]

nnoremap <F2> :NvimTreeToggle<CR>
nnoremap <F3> :NvimTreeOpen<CR> :NvimTreeFindFile<CR>

" let g:nvim_tree_auto_open = 1

let g:nvim_tree_icon_padding = ' '
let g:nvim_tree_gitignore = 1
let g:nvim_tree_git_hl = 1
let g:nvim_tree_add_trailing = 1
let g:nvim_tree_hide_dotfiles = 1
let g:nvim_tree_group_empty = 1
let g:nvim_tree_disable_window_picker = 1
let g:nvim_tree_highlight_opened_files = 1
set termguicolors
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': ''
    \ }

lua <<EOF
    local tree_cb = require'nvim-tree.config'.nvim_tree_callback

    require'nvim-tree'.setup {
      open_on_setup = false,
      open_on_tab = true,
      view = {
        mappings = {
          list = {
            { key = "s",  cb=tree_cb("split") },
            { key = "t",  cb=tree_cb("tabnew") },
            { key = "<C-v>",  cb=tree_cb("vsplit") },
            { key = "C",  cb=tree_cb("cd") },
            { key = "u",  cb=tree_cb("dir_up") },
            { key = "<C-o>", cb=tree_cb("system_open") }
          }
        }
      },
      highlight_focused_file = true,
      update_focused_file = {
        enable      = true,
        update_cwd  = false,
        ignore_list = {}
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          }
        }
      }
  }
EOF
