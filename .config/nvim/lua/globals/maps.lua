local keymap = vim.keymap

-- Save / Close file
keymap.set("n", "<Leader>w", "<cmd>w<cr><esc>")
keymap.set("n", "<Leader>q", "<cmd>q<cr><esc>")

-- Tabs
keymap.set("n", "te", "<cmd>tabnew<cr><esc>")
keymap.set("n", "tc", "<cmd>tabclose<cr><esc>")
keymap.set("n", "tn", "<cmd>tabnext<cr><esc>")
keymap.set("n", "tp", "<cmd>tabprevious<cr><esc>")

-- Split Window
keymap.set("n", "<Leader>h", "<cmd>split<cr><C-w>w")
keymap.set("n", "<Leader>v", "<cmd>vsplit<cr><C-w>w")
