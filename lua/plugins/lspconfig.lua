return {
  'neovim/nvim-lspconfig',
  config = function()
		local utils = require('utils')
		local mappings = require('core.mappings')
    require('neodev').setup {}

		vim.api.nvim_create_autocmd('LspAttach', {
			callback = function (ev)
				local buffer = ev.buf
				utils.map_key_valued('n', mappings.lsp, vim.lsp.buf, { buffer = buffer })

				local client = vim.lsp.get_client_by_id(ev.data.client_id)

				---@diagnostic disable-next-line: need-check-nil
				if client.server_capabilities.inlayHintProvider then
					vim.lsp.inlay_hint.enable(buffer, true)
				end
			end
		})


		utils.map_key_valued('n', mappings.diagnostic, vim.diagnostic)

		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
		vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
	end
}
