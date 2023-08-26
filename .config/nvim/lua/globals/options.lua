local options = {
	backup = false,
	cmdheight = 2,
	completeopt = { "menuone", "noselect" },
	conceallevel = 0,
	fileencoding = "utf-8",
	hlsearch = true,
	ignorecase = true,
	mouse = "a",
	showmode = false,
	smartcase = true,
	smartindent = true,
	timeoutlen = 1000,
	undofile = true,
	updatetime = 300,
	writebackup = false,
	expandtab = true,
	shiftwidth = 2,
	tabstop = 2,
	cursorline = true,
	number = true,
	relativenumber = true,
	numberwidth = 2,
	wrap = false,
	termguicolors = true,
}

-- (Windows)
-- vim.opt.clipboard:prepend({ "unnamed", "unnamedplus" })

vim.opt.clipboard:prepend({ "unnamedplus" })
vim.opt.shortmess:append("c")

for x, y in pairs(options) do
	vim.opt[x] = y
end
