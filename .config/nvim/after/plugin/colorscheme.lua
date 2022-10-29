local theme_status, theme = pcall(require, "catppuccin")
if not theme_status then
	vim.notify("Colorscheme not found!")
	vim.cmd([[
    colorscheme default
		set background=dark
  ]])
	return
end

theme.setup({
	flavour = "mocha",
	-- transparent_background = true,
})

local colorscheme = "catppuccin"
local present, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not present then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end
