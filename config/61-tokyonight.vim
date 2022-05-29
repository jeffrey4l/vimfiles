if !has_key(plugs, 'tokyonight.nvim') | finish | endif
if g:colorschema != 'tokyonight' | finish | endif
set termguicolors
lua <<EOF
# vim.g.tokyonight_style = "night"
vim.g.tokyonight_transparent = true
EOF

colorscheme tokyonight
