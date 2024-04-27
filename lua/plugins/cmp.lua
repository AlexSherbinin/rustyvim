return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'neovim/nvim-lspconfig',
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip'
	},
	config = function()
		local cmp = require('cmp')
		local mappings = require('core.mappings').cmp

		cmp.setup {
			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered()
			},
			mapping = cmp.mapping.preset.insert {
				[mappings.scroll_docs_up] = cmp.mapping.scroll_docs(-4),
				[mappings.scroll_docs_down] = cmp.mapping.scroll_docs(4),
				[mappings.complete] = cmp.mapping.complete(),
				[mappings.abort] = cmp.mapping.abort(),
				[mappings.confirm] = cmp.mapping.confirm { select = true }
			},
			sources = cmp.config.sources {
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' }
			}
		}
	end
}
