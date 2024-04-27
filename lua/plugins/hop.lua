return {
    'smoka7/hop.nvim',
		tag = "v2.5.1",
    config = function ()
			local mappings = require('core.mappings').hop
    	require('hop').setup {}

			vim.keymap.set('n', mappings.word, '<Cmd>HopWord<CR>')
    end,
}
