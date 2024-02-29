return {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	config = function()
		local mason = require("mason")
		local lspconfig = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")

		mason.setup()
		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"csharp_ls",
				"marksman"
			},
		})

		lspconfig.lua_ls.setup({})
		lspconfig.csharp_ls.setup({})
		lspconfig.marksman.setup({})
	end
}
