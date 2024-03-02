return {
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',
	config = function()
		local mason = require('mason')
		local lspconfig = require('lspconfig')
		local mason_lspconfig = require('mason-lspconfig')

		mason.setup()
		lspconfig.setup()
		mason_lspconfig.setup()
		mason_lspconfig.setup_handlers({
			function(server_name)
				lspconfig[server_name].setup({})
			end
		})

		-- lspconfig.lua_ls.setup({})
		-- lspconfig.csharp_ls.setup({})
		-- lspconfig.marksman.setup({})
	end
}
