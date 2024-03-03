-- check ../loadlazy.lua if you want to change colorscheme
return {
	{
		'ellisonleao/gruvbox.nvim',
		lazy = false,
		priority = 1000,
	},
	{
		'bluz71/vim-nightfly-colors',
		name = 'nightfly',
		lazy = false,
		priority = 1000,
	},
	{
		'neanias/everforest-nvim',
		version = false,
		lazy = false,
		priority = 1000,
	},
	{
		'rebelot/kanagawa.nvim',
		lazy = false,
		priority = 1000,
	},
	{
		'folke/tokyonight.nvim',
		lazy = false,
		priority = 1000,
	},
	{
		'sainnhe/gruvbox-material',
		lazy = false,
		priority = 1000,
	},
	{
		'olimorris/onedarkpro.nvim',
		priority = 1000,
	},
	{
		'shaunsingh/nord.nvim',
		enabled = false,
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd[[colorscheme nord]]
			vim.g.nord_contrast = true
			vim.g.nord_borders = false
			vim.g.nord_disable_backgroud = true
			vim.g.nord_italic = false
			vim.g.nord_uniform_diff_background = true
			vim.g.nord_bold = false

			require('nord').set()
		end
	},
	{
		'EdenEast/nightfox.nvim',
		lazy = false,
		priority = 1000,
	}
}
