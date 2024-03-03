return {
	'folke/noice.nvim',
	event = 'VeryLazy',
	opts = {
	},
	dependencies = {
		'MunifTanjim/nui.nvim',
		'rcarriga/nvim-notify',
	},
	config = function ()
		require('noice').setup({
			cmdline = {
				view = 'cmdline',
				format = {
					search_down = {
						view = 'cmdline',
					},
					search_up = {
						view = 'cmdline',
					},
				},
			},
		})
	end
}
