local null_ls_status_ok, null_ls = pcall(require, "null-ls")

if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier,
		formatting.eslint_d,
		formatting.stylua,
		diagnostics.eslint_d,
	},
})

-- Keymaps
vim.keymap.set("n", "<Leader>f", "<cmd>lua vim.lsp.buf.format({ timeout_ms = 5000 })<cr><esc>")
