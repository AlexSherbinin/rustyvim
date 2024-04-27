require('lang.utils').install_package('codelldb')

vim.g.rustaceanvim = function()
	local extension_path = vim.fn.stdpath('data') .. '/mason/packages/codelldb/extension/'
	local codelldb_path = extension_path .. 'adapter/codelldb'
	local liblldb_path = extension_path .. 'lldb/lib/liblldb'
	local this_os = vim.uv.os_uname().sysname;

	if this_os:find "Windows" then
		codelldb_path = extension_path .. "adapter\\codelldb.exe"
		liblldb_path = extension_path .. "lldb\\bin\\liblldb.dll"
	else
		liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")
	end

	local config = require('rustaceanvim.config')
	local executor = require('rustaceanvim.executors').toggleterm
	return {
		tools = {
			executor = executor,
			test_executor = executor,
			crate_test_executor = executor
		},
		dap = {
			adapter = config.get_codelldb_adapter(codelldb_path, liblldb_path),
		},
		server = {
			default_settings = {
				["rust-analyzer"] = {
					procMacro = {
						ignored = {
							["rustyui-macro"] = { "composable" }
						}
					}
				}
			}
		}
	}
end

require('crates').setup {
	lsp = {
		enabled = true,
		on_attach = function(_, _)
		end,
		actions = true,
		completion = true,
		hover = true
	}
}
