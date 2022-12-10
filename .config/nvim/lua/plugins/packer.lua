local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap =
  fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
  vim.cmd([[packadd packer.nvim]])
end

return require("packer").startup(function()
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  -- Common utilities
  use("nvim-lua/plenary.nvim")

  -- Colorscheme
  use("bluz71/vim-nightfly-guicolors")

  -- File explorer
  use({
    "kyazdani42/nvim-web-devicons",
    "kyazdani42/nvim-tree.lua",
  })

  -- Tmux nav
  use("alexghergh/nvim-tmux-navigation")

  -- Statusline
  use("nvim-lualine/lualine.nvim")

  -- Fuzzy file finder
  use("nvim-telescope/telescope.nvim")

  -- Completion Plugins
  use({
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-nvim-lsp",
    "saadparwaiz1/cmp_luasnip",
  })

  -- Snippets
  use({
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets",
  })

  -- LSP
  use({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "jose-elias-alvarez/null-ls.nvim",
    "onsails/lspkind-nvim",
    "glepnir/lspsaga.nvim"
  })

  -- Treesitter
  use("nvim-treesitter/nvim-treesitter")

  -- Close tags and more
  use({
    "windwp/nvim-autopairs",
    "windwp/nvim-ts-autotag",
  })

  -- Comments
  use("numToStr/Comment.nvim")

  -- Git
  use("lewis6991/gitsigns.nvim")

  -- Colorizer
  use("norcalli/nvim-colorizer.lua")

  -- Markdown Preview
  use({
    "iamcco/markdown-preview.nvim",
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
  })

  if packer_bootstrap then
    require("packer").sync()
  end
end)
