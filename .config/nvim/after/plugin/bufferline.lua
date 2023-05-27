local status_ok, bufferline = pcall(require, "bufferline")

if not status_ok then
	return
end

bufferline.setup({
	options = {
		mode = "tabs",
		always_show_bufferline = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		color_icons = true,
	},
	highlights = {
		background = {
			fg = "#657b83",
			bg = "#1e1f28",
		},
		buffer_selected = {
			fg = "#fdf6e3",
			bold = true,
		},
		fill = {
			bg = "#1e1f28",
		},
	},
})

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
