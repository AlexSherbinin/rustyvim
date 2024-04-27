require('lang.utils').install_package('json-lsp')
require('lspconfig').jsonls.setup {
	settings = {
		json = {
			schemas = require('schemastore').json.schemas(),
			validate = { enable = true }
		}
	}
}
