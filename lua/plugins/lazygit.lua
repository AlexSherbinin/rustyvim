local mappings = require('core.mappings')

return {
	"kdheepak/lazygit.nvim",
	cmd = {
		"LazyGit",
		"LazyGitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ mappings.lazygit.open, "<cmd>LazyGit<cr>", desc = "LazyGit" }
	},
	setup = function()
		vim.keymap.del('t', '<esc>')
	end
}
