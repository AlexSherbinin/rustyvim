return {
	"rcarriga/nvim-dap-ui",
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio"
	},
	config = function()
		local utils = require('utils')
		local mappings = require('core.mappings').dap

		local dap = require('dap')
		local dapui = require('dapui')

		dapui.setup {}
		utils.map_key_valued('n', mappings, dap, {}, { 'stop' })
		vim.keymap.set('n', mappings.stop, function()
			dap.disconnect({ terminateDebuggee = true })
		end)


		-- Auto open/close on debug session corresponding events
		dap.listeners.after.event_initialized['dapui_config'] = function()
			dapui.open({})
		end

		dap.listeners.before.event_terminated['dapui_config'] = function()
			dapui.close({})
		end

		dap.listeners.before.event_exited['dapui_config'] = function()
			dapui.close({})
		end
	end
}
