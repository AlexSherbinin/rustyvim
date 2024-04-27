local toggle_format_mapping = require('core.mappings').format_on_save.toggle

local is_format_on_save_enabled = true
vim.keymap.set('n', toggle_format_mapping, function()
	is_format_on_save_enabled = not is_format_on_save_enabled

	if is_format_on_save_enabled then
		print('Format on save enabled')
	else
		print('Format on save disabled')
	end
end)

vim.api.nvim_create_autocmd('BufWritePre', {
	callback = function(ev)
		local client = vim.lsp.get_clients({ bufnr = ev.buf })[1]

		if client ~= nil and client.server_capabilities.documentFormattingProvider and toggle_format_mapping then
			vim.lsp.buf.format()
		end
	end
})
