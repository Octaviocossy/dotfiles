local status_ok, nvimtree = pcall(require, "nvim-tree")

if not status_ok then
	return
end

nvimtree.setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		side = "right",
		width = 65,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false,
	},
})

-- Keymap
vim.keymap.set("n", "<Leader>e", "<cmd>NvimTreeToggle<cr><C-w>w")
