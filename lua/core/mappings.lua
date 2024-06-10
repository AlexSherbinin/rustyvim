vim.g.mapleader = " "
vim.cmd('set clipboard+=unnamedplus')

return {
	neo_tree = {
		open_file_tree = "<leader>f",
	},
	cmp = {
		confirm = "<CR>",
		abort = "<C-e>",
		complete = "<C-space>",
		scroll_docs_up = "<C-f>",
		scroll_docs_down = "<C-b>"
	},
	telescope = {
		find_files = "<leader>tt",
		lsp_symbols = "<leader>tl",
		diagnostics = "<leader>td"
	},
	hop = {
		word = "<leader>h"
	},
	toggleterm = {
		open = "<F3>"
	},
	lsp = {
		definition = "gd",
		implementation = "gi",
		references = "gr",
		rename = "<F2>",
		hover = "K",
		code_action = "<leader>a"
	},
	diagnostic = {
		goto_prev = "[d",
		goto_next = "]d"
	},
	dap = {
		toggle_breakpoint = "<F9>",
		continue = "<F5>",
		stop = "<F17>",
		step_over = "<F10>",
		step_into = "<F11>",
		step_out = "<F23>"
	},
	git = {
		preview_hunk = "<leader>gp",
		diffthis = "<leader>gd"
	},
	format_on_save = {
		toggle = "<leader>/"
	},
	lazygit = {
		open = "<leader>gg"
	}
}
