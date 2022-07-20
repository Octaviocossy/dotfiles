if !exists('#LspColors') | finish | endif

lua << EOF
require("lsp-colors").setup({
  Error = "#E78284",
  Warning = "#F2D5CF",
  Information = "#85C1DC",
  Hint = "#A6D189"
})
EOF
