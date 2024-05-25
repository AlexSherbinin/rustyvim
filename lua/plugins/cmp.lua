return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline'
	},
	config = function()
		local cmp = require('cmp')
		local mappings = require('core.mappings').cmp

		cmp.setup {
			snippet = {
				expand = function(args)
					vim.snippet.expand(args.body)
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
			}
		}

		cmp.setup.cmdline({ '/', '?' }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = 'buffer' }
			}
		})

		cmp.setup.cmdline(':', {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = 'path' },
				{ name = 'cmdline' }
			}
		})
	end
}
