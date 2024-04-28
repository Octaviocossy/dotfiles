local nnoremap = require("core.utils").keymap_nnoremap
local _nnoremap = require("core.utils").keymap_nmap
local inoremap = require("core.utils").keymap_inoremap

local M = {}

-- Disable Space bar since it'll be used as the leader key
nnoremap("<space>", "<nop>")
--
-- Save with leader key
nnoremap("<leader>w", "<cmd>w!<cr>", { silent = false })

-- Quit with leader key
nnoremap("<leader>q", "<cmd>q!<cr>", { silent = false })

-- Oil
nnoremap("<leader>e", function()
  require("oil").toggle_float()
end)

-- Telescope
nnoremap("<leader>sf", function()
  require("telescope.builtin").find_files(require("telescope.themes").get_dropdown({ winblend = 10 }))
end, { desc = "[S]earch [F]iles" })
nnoremap("<leader>sg", function()
  require("telescope.builtin").live_grep(require("telescope.themes").get_dropdown({ winblend = 10 }))
end, { desc = "[S]earch by [G]rep" })
nnoremap("<leader>/", function()
  require("telescope.builtin").current_buffer_fuzzy_find(
    require("telescope.themes").get_dropdown({ previewer = false })
  )
end, { desc = "[/] Fuzzily search in current buffer]" })

-- LSP
M.map_lsp_keybinds = function(buffer_number)
  nnoremap("<leader>rn", vim.lsp.buf.rename, { desc = "LSP: [R]e[n]ame", buffer = buffer_number })
  nnoremap("<leader>ca", vim.lsp.buf.code_action, { desc = "LSP: [C]ode [A]ction", buffer = buffer_number })

  nnoremap("gd", vim.lsp.buf.definition, { desc = "LSP: [G]oto [D]efinition", buffer = buffer_number })

  -- Telescope LSP keybinds --
  nnoremap(
    "gr",
    require("telescope.builtin").lsp_references,
    { desc = "LSP: [G]oto [R]eferences", buffer = buffer_number }
  )

  nnoremap(
    "gi",
    require("telescope.builtin").lsp_implementations,
    { desc = "LSP: [G]oto [I]mplementation", buffer = buffer_number }
  )

  nnoremap(
    "<leader>bs",
    require("telescope.builtin").lsp_document_symbols,
    { desc = "LSP: [B]uffer [S]ymbols", buffer = buffer_number }
  )

  nnoremap(
    "<leader>ps",
    require("telescope.builtin").lsp_workspace_symbols,
    { desc = "LSP: [P]roject [S]ymbols", buffer = buffer_number }
  )

  -- See `:help K` for why this keymap
  nnoremap("K", vim.lsp.buf.hover, { desc = "LSP: Hover Documentation", buffer = buffer_number })
  nnoremap("<leader>k", vim.lsp.buf.signature_help, { desc = "LSP: Signature Documentation", buffer = buffer_number })
  inoremap("<C-k>", vim.lsp.buf.signature_help, { desc = "LSP: Signature Documentation", buffer = buffer_number })

  -- Lesser used LSP functionality
  nnoremap("gD", vim.lsp.buf.declaration, { desc = "LSP: [G]oto [D]eclaration", buffer = buffer_number })
  nnoremap("td", vim.lsp.buf.type_definition, { desc = "LSP: [T]ype [D]efinition", buffer = buffer_number })
end

-- Symbol Outline keybind
nnoremap("<leader>so", ":SymbolsOutline<cr>")

-- Spectre
-- Open for global find/replace
nnoremap("<leader>S", function()
  require("spectre").toggle()
end)

-- Open for global find/replace for the word under the cursor in normal mode
nnoremap("<leader>sw", function()
  require("spectre").open_visual({ select_word = true })
end, { desc = "Search current word" })

-- Split windows
nnoremap("<leader>h", "<cmd>split<cr><C-w>w")
nnoremap("<leader>v", "<cmd>vsplit<cr><C-w>w")

-- Move through the windows
nnoremap("<C-h>", function()
  require("nvim-tmux-navigation").NvimTmuxNavigateLeft()
end, { desc = "Move to left panel" })

nnoremap("<C-j>", function()
  require("nvim-tmux-navigation").NvimTmuxNavigateDown()
end, { desc = "Move to down panel" })

nnoremap("<C-k>", function()
  require("nvim-tmux-navigation").NvimTmuxNavigateUp()
end, { desc = "Move to up panel" })

nnoremap("<C-l>", function()
  require("nvim-tmux-navigation").NvimTmuxNavigateRight()
end, { desc = "Move to right panel" })

-- Press leader f to format
nnoremap("<leader>f", function()
  vim.lsp.buf.format({ timeout_ms = 5000 })
end, { desc = "Format the current buffer" })

-- Diagnostics

-- Goto next diagnostic of any severity
nnoremap("]d", function()
  vim.diagnostic.goto_next({})
  vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Goto previous diagnostic of any severity
nnoremap("[d", function()
  vim.diagnostic.goto_prev({})
  vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Goto next error diagnostic
nnoremap("]e", function()
  vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
  vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Goto previous error diagnostic
nnoremap("[e", function()
  vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
  vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Goto next warning diagnostic
nnoremap("]w", function()
  vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN })
  vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Goto previous warning diagnostic
nnoremap("[w", function()
  vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN })
  vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Open the diagnostic under the cursor in a float window
nnoremap("<leader>d", function()
  vim.diagnostic.open_float({
    border = "rounded",
  })
end)

-- nvim-ufo keybinds
nnoremap("zR", function()
  require("ufo").openAllFolds()
end)
nnoremap("zM", function()
  require("ufo").closeAllFolds()
end)

-- Git keymaps --
nnoremap("<leader>gs", ":DiffviewOpen<cr>")

-- Bufferline
nnoremap("te", ":tabnew<cr>")
nnoremap("tc", ":tabclose<cr>")
nnoremap("tn", ":tabnext<cr>")
nnoremap("tp", ":tabprevious<cr>")

_nnoremap("<Tab>", ":BufferLineCycleNext<cr>")
_nnoremap("<S-Tab>", ":BufferLineCyclePrev<cr>")

-- Turn off highlighted results
nnoremap("<leader>no", "<cmd>noh<cr>")

return M
