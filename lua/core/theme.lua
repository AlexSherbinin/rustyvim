vim.cmd('colorscheme tokyonight')

local transparent = require('transparent')
transparent.setup {
  groups = {
    'Normal', 'NormalNC', 'NormalSB', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
    'EndOfBuffer', 'NormalFloat', 'Float', 'FloatBorder', 'FloatShadow', 'FloatShadowThrough',
    'FloatTitle', 'lualine_c_normal', 'lualine_c_inactive', 'LspInlayHint'
  }
}
local transparent_prefixes = { "NeoTree", "Cmp", "Telescope" }
for _, prefix in ipairs(transparent_prefixes) do
	transparent.clear_prefix(prefix)
end

local stats_color = vim.api.nvim_get_hl(0, { name = "Normal" }).fg
vim.api.nvim_set_hl(0, 'NeoTreeFileStatsHeader', { fg = stats_color })
vim.api.nvim_set_hl(0, 'NeoTreeFileStats', { fg = stats_color })

local git_added_color = "#81C784"
vim.api.nvim_set_hl(0, 'NeoTreeGitUntracked', { fg = git_added_color })
vim.api.nvim_set_hl(0, 'NeoTreeGitAdded', { fg = git_added_color })
vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = "#64B5F6" })

vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = "#43A047" })
vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = "#1E88E5" })

vim.api.nvim_set_hl(0, 'LspInlayHint', { fg = "#52c78c" })
vim.api.nvim_set_hl(0, 'DiagnosticUnnecessary', { fg = "NONE" })

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.showmode = false

vim.diagnostic.config {
	update_in_insert = true,
	float = {
		border = "rounded"
	}
}
