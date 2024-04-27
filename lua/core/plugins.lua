local utils = require('utils')
local plugins = {}

utils.foreach_in_dir('/lua/plugins', function (file)
  	local plugin = require('plugins.'..file:gsub('%.lua$', ''))
  	table.insert(plugins, plugin)
end)


require('lazy').setup(plugins)
