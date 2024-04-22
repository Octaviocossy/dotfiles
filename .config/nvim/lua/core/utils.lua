local M = {}

local function bind(op, outer_opts)
  outer_opts = vim.tbl_extend("force", { noremap = true, silent = true }, outer_opts or {})

  return function(lhs, rhs, opts)
    opts = vim.tbl_extend("force", outer_opts, opts or {})
    vim.keymap.set(op, lhs, rhs, opts)
  end
end

M.keymap_map = bind("")
M.keymap_nmap = bind("n", { noremap = false })
M.keymap_nnoremap = bind("n")
M.keymap_vnoremap = bind("v")
M.keymap_xnoremap = bind("x")
M.keymap_inoremap = bind("i")
M.keymap_tnoremap = bind("t")

return M
