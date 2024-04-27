require('core.lazy')
require('core.plugins')
require('core.format-on-save')
require('core.theme')

-- Load language configurations
local utils = require('utils')

utils.foreach_in_dir('/lua/lang', function(file)
	local module_name = file:gsub('%.lua$', '');
	if module_name ~= 'utils' then
		require('lang.' .. module_name)
	end
end)
