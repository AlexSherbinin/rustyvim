return {
	'lewis6991/gitsigns.nvim',
	config = function ()
		local utils = require('utils')
		local mappings = require('core.mappings').git
		local gitsigns = require('gitsigns')

		gitsigns.setup {}
		utils.map_key_valued('n', mappings, gitsigns)
	end
}
