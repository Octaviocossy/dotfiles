local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
	vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Common utilities
	use 'nvim-lua/plenary.nvim'

	-- Colorscheme
	use 'gruvbox-community/gruvbox'

	-- File explorer
	use 'kyazdani42/nvim-web-devicons'
	use 'kyazdani42/nvim-tree.lua'

	-- Tmux nav
	use 'alexghergh/nvim-tmux-navigation'

	-- Statusline
	use 'nvim-lualine/lualine.nvim'

	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}

	-- Close tags
	use 'windwp/nvim-autopairs'
	use 'windwp/nvim-ts-autotag'

	-- Fuzzy file finder
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-file-browser.nvim'

	if packer_bootstrap then
		require('packer').sync()
	end
end)
