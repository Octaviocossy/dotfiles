local status, blankline = pcall(require, "ident_blankline")
if not status then
	return
end

blankline.setup({
	char = "│",
	filetype_exclude = {
		"help",
		"alpha",
		"dashboard",
		"neo-tree",
		"Trouble",
		"lazy",
		"mason",
		"notify",
		"toggleterm",
		"lazyterm",
	},
	show_trailing_blankline_indent = false,
	show_current_context = false,
})
