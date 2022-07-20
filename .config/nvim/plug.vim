if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  "A blazing fast and easy to configure Neovim statusline written in Lua.
  Plug 'hoob3rt/lualine.nvim' 
 
  " File explorer
  Plug 'kyazdani42/nvim-tree.lua'
  
  " Theme
  Plug 'catppuccin/nvim', {'as': 'catppuccin'}
  
  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'tami5/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug 'onsails/lspkind-nvim'
 
  " Completion
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
 
  "Syntax
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Snippets
  Plug 'L3MON4D3/LuaSnip'

  " Others
  Plug 'alexghergh/nvim-tmux-navigation'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'
endif

call plug#end()

