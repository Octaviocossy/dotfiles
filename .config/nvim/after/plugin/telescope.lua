local status_ok, telescope = pcall(require, "telescope")

if not status_ok then return end

local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

telescope.setup{
  defaults = {
    file_ignore_patterns = {"node_modules"},
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}

-- Keymap

vim.keymap.set('n', '<Leader>d', function()
	builtin.find_files({
		no_ignore = false,
		hidden = true
	})
end)
