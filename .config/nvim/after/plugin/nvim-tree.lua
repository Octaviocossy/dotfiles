local status_ok, nvimtree = pcall(require, 'nvim-tree')

if not status_ok then return end

nvimtree.setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
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
  actions = {
    open_file = {
      -- quit_on_open = true,
    },
  },
})

-- Keymap

vim.keymap.set('n', '<Leader>e', ':NvimTreeFocus<Return>')
