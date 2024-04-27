local M = {}

function M.foreach_in_dir(dir, cb)
	for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config') .. dir)) do
		cb(file)
	end
end

local function contains(table, value)
	if table == nil then
		return false
	end

	for _, table_value in pairs(table) do
		if table_value == value then
			return true
		end
	end
	return false
end

function M.map_key_valued(mode, mappings, map_object, opts, ignore)
	for mapping_property, mapping in pairs(mappings) do
		if contains(ignore, mapping_property) == false then
			vim.keymap.set(mode, mapping, map_object[mapping_property], opts)
		end
	end
end

return M
