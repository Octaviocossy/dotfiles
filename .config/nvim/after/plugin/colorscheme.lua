local colorscheme = "monokai-pro"

local theme_status, theme = pcall(require, colorscheme)

if not theme_status then
  vim.notify("Colorscheme not found!")
  vim.cmd([[
    colorscheme default
		set background=dark
  ]])
  return
end

theme.setup({
  transparent_background = true,
  terminal_colors = true,
  devicons = true, -- highlight the icons of `nvim-web-devicons`
  styles = {
    comment = { italic = true },
    keyword = { italic = true },       -- any other keyword
    type = { italic = true },          -- (preferred) int, long, char, etc
    storageclass = { italic = true },  -- static, register, volatile, etc
    structure = { italic = true },     -- struct, union, enum, etc
    parameter = { italic = true },     -- parameter pass in function
    annotation = { italic = true },
    tag_attribute = { italic = true }, -- attribute of tag in reactjs
  },
  filter = "pro",                      -- classic | octagon | pro | machine | ristretto | spectrum
  -- Enable this will disable filter option
  day_night = {
    enable = false,            -- turn off by default
    day_filter = "pro",        -- classic | octagon | pro | machine | ristretto | spectrum
    night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
  },
  inc_search = "background",   -- underline | background
  background_clear = {
    "toggleterm",
    "telescope",
    "renamer",
    "notify",
    "nvim-tree",
    -- "float_win",
    -- "which-key",
    -- "neo-tree",
  },              -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
  plugins = {
    bufferline = {
      underline_selected = false,
      underline_visible = false,
    },
    indent_blankline = {
      context_highlight = "default", -- default | pro
      context_start_underline = false,
    },
  },
  ---@param c Colorscheme
  override = function(c) end,
})

local present, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not present then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
