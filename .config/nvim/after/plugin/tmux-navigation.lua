local status_ok, tmuxnav = pcall(require, "nvim-tmux-navigation")

if not status_ok then
	return
end

-- Keymaps

vim.keymap.set("n", "<C-h>", tmuxnav.NvimTmuxNavigateLeft)
vim.keymap.set("n", "<C-j>", tmuxnav.NvimTmuxNavigateDown)
vim.keymap.set("n", "<C-k>", tmuxnav.NvimTmuxNavigateUp)
vim.keymap.set("n", "<C-l>", tmuxnav.NvimTmuxNavigateRight)
vim.keymap.set("n", "<C-\\>", tmuxnav.NvimTmuxNavigateLastActive)
vim.keymap.set("n", "<C-Space>", tmuxnav.NvimTmuxNavigateNext)
