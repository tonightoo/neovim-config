return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/vim-vsnip',
		'hrsh7th/cmp-vsnip',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-cmdline',
		'hrsh7th/cmp-path',
	},
	config = function()
		local cmp = require('cmp')
		local map = cmp.mapping

		cmp.setup({
			snippet = {
				expand = function(args)
					vim.fn['vsnip#anonymous'](args.body)
				end,
			},
			mapping = map.preset.insert({
				['<C-d>'] = map.scroll_docs(-4),
				['<C-f>'] = map.scroll_docs(4),
				['<C-Space>'] = map.complete(),
				['<C-e>'] = map.abort(),
				['<CR>'] = map.confirm({ select = false }),
			}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'vsnip' },
			},{
				{ name = 'buffer' },
			})
		})

		cmp.setup.cmdline({'/', '?'}, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = 'buffer' }
			}
		})

		cmp.setup.cmdline(':', {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = 'path' }
			}, {
				{ name = 'cmdline' }
			})
		})
	end
}
