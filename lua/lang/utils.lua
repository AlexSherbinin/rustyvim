local mason_package = require('mason-core.package')
local mason_registry = require('mason-registry')

local M = {}

function M.install_package(pkg)
	local name, version = mason_package.Parse(pkg)
	local resolved_pkg = mason_registry.get_package(name)
	if not resolved_pkg:is_installed() then
		resolved_pkg:install({ version = version })
	end
end

return M
