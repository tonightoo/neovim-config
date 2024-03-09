return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	config = function()
		require('nvim-treesitter.install').update({ with_sync = true })()
		require('nvim-treesitter.configs').setup({
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
