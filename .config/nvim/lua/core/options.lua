local options = {
  -- Enable relative line numbers
  nu = true,
  rnu = true,
  -- Disable showing the mode below the statusline
  showmode = false,
  -- Set tabs to 2 spaces
  tabstop = 2,
  softtabstop = 2,
  expandtab = true,
  -- Enable auto indenting and set it to spaces
  smartindent = true,
  shiftwidth = 2,
  -- Enable smart indenting (see https://stackoverflow.com/questions/1204149/smart-wrap-in-vim)
  breakindent = true,
  -- Enable incremental searching
  incsearch = true,
  hlsearch = true,
  -- Disable text wrap
  wrap = false,
  -- Better splitting
  splitbelow = true,
  splitright = true,
  -- Enable mouse mode
  mouse = "a",
  -- Enable ignorecase + smartcase for better searching
  ignorecase = true,
  smartcase = true,
  -- Decrease updatetime to 250ms
  updatetime = 250,
  -- Set completeopt to have a better completion experience
  completeopt = { "menuone", "noselect" },
  -- Enable persistent undo history
  undofile = true,
  -- Enable 24-bit color
  termguicolors = true,
  -- Enable the sign column to prevent the screen from jumping
  signcolumn = "yes",
  -- Enable cursor line highlight
  cursorline = true,
  -- Set fold settings
  -- These options were reccommended by nvim-ufo
  -- See: https://github.com/kevinhwang91/nvim-ufo#minimal-configuration
  foldcolumn = "0",
  foldlevel = 99,
  foldlevelstart = 99,
  foldenable = true,
  -- Always keep 8 lines above/below cursor unless at start/end of file
  scrolloff = 8,
  -- Place a column line
  colorcolumn = "160",
  guicursor = {
    "n-v-c:block", -- Normal, visual, command-line: block cursor
    "i-ci-ve:ver25", -- Insert, command-line insert, visual-exclude: vertical bar cursor with 25% width
    "r-cr:hor20", -- Replace, command-line replace: horizontal bar cursor with 20% height
    "o:hor50", -- Operator-pending: horizontal bar cursor with 50% height
    "a:blinkwait700-blinkoff400-blinkon250", -- All modes: blinking settings
    "sm:block-blinkwait175-blinkoff150-blinkon175", -- Showmatch: block cursor with specific blinking settings
  },
}

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Enable access to System Clipboard

-- (Windows)
-- vim.opt.clipboard:prepend({ "unnamed", "unnamedplus" })

-- (Linux / MacOS)
vim.opt.clipboard:prepend({ "unnamedplus" })
vim.opt.shortmess:append("c")

for x, y in pairs(options) do
  vim.opt[x] = y
end
