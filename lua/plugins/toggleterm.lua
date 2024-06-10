return {
	'akinsho/toggleterm.nvim',
	config = function()
		local mappings = require('core.mappings').toggleterm
		require('toggleterm').setup {
			direction = 'float',
			float_opts = {
				border = 'rounded'
			}
		}

		-- To quit on :wqa
		vim.api.nvim_create_autocmd({ "TermEnter" }, {
			callback = function()
				for _, buffers in ipairs(vim.fn.getbufinfo()) do
					local filetype = vim.api.nvim_get_option_value("filetype", { buf = buffers.bufnr })
					if filetype == "toggleterm" then
						vim.api.nvim_create_autocmd({ "BufWriteCmd", "FileWriteCmd", "FileAppendCmd" }, {
							buffer = buffers.bufnr,
							command = "q!",
						})
					end
				end
			end,
		})

		vim.keymap.set({ 'n', 't' }, mappings.open, '<Cmd>ToggleTerm<CR>')
	end
}
