syntax enable
set termguicolors
set winblend=0
set wildoptions=pum
set pumblend=5
set background=dark

lua << EOF
require("catppuccin").setup {
	transparent_background = true,
}
EOF

colorscheme catppuccin
let g:catppuccin_flavour = "frappe"

