return {
--[[	'nvimtools/none-ls.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvimtools/none-ls-extras.nvim',
	},
	config = function ()
		local null_ls = require('null-ls')
		null_ls.setup({
			sources = {
				require('none-ls.formatting.stylua'),
				require('none-ls.formatting.prettier'),
				require('none-ls.diagnostics.eslint_d'),
				--null_ls.builtins.formatting.stylua,
				--null_ls.builtins.diagnostics.eslint_d,
				--null_ls.builtins.formatting.prettier,
			},
		})

		debug = true
		vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
	end,]]
}
