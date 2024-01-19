local status_ok, neo_tree = pcall(require, "neo-tree")

if not status_ok then
	return
end

neo_tree.setup({
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
    }
  },
	window = {
		width = 60,
		position = "right",
	},
})

-- Keymap
vim.keymap.set("n", "<Leader>e", "<cmd>Neotree<cr><C-w>w")
