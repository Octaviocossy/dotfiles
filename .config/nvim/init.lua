-- Set map leader
vim.g.mapleader = " "

-- Import config
require("globals/options")
require("globals/maps")
require("plugins/packer")
require("lsp")

-- Msg
print("init.lua loaded - Happy Hacking 🔮")
