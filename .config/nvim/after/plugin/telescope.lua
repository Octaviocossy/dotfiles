local status_ok, telescope = pcall(require, "telescope")

if not status_ok then
	return
end

local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

telescope.setup({
	defaults = {
		file_ignore_patterns = { "node_modules" },
		mappings = {
			n = {
				["q"] = actions.close,
			},
		},
	},
	pickers = {
		find_files = {
			prompt_prefix = "🔍",
			theme = "dropdown",
		},
	},
})

-- Keymap
vim.keymap.set("n", "<Leader>d", function()
	builtin.find_files()
end)

vim.keymap.set("n", "<Leader>s", function()
	builtin.live_grep()
end)

vim.keymap.set("n", "<Leader>gb", function()
	builtin.git_branches()
end)

vim.keymap.set("n", "<Leader>gc", function()
	builtin.git_commits()
end)

vim.keymap.set("n", "<Leader>gs", function()
	builtin.git_status()
end)

vim.keymap.set("n", "<Leader>sw", function()
	builtin.grep_string()
end)
