local status, saga = pcall(require, "lspsaga")

if not status then
	return
end

saga.setup({
	ui = {
		border = "rounded",
	},
	symbol_in_winbar = {
		enable = false,
	},
	lightbulb = {
		enable = false,
	},
	outline = {
		layout = "float",
	},
})

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "H", "<Cmd>Lspsaga hover_doc<CR>", opts)
vim.keymap.set("n", "gd", "<Cmd>Lspsaga goto_definition<CR>", opts)
vim.keymap.set("n", "gt", "<Cmd>Lspsaga goto_type_definition<CR>", opts)
vim.keymap.set("n", ";d", "<Cmd>Lspsaga show_line_diagnostics<CR>", opts)
vim.keymap.set("n", ";f", "<Cmd>Lspsaga finder<CR>", opts)
vim.keymap.set("n", ";r", "<Cmd>Lspsaga rename<CR>", opts)
vim.keymap.set("n", "d[", "<Cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
vim.keymap.set("n", "d]", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
