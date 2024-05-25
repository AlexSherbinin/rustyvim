return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.6',
	dependencies = {
		'nvim-lua/plenary.nvim'
	},

	config = function()
		local mappings = require('core.mappings').telescope
		local telescope = require('telescope.builtin')

		vim.keymap.set('n', mappings.find_files, telescope.find_files)
		vim.keymap.set('n', mappings.lsp_symbols, telescope.lsp_workspace_symbols)
		vim.keymap.set('n', mappings.diagnostics, telescope.diagnostics)
	end
}
