local git_added_color = "#81C784"
return {
	colorscheme = 'tokyonight',
	highlight = {
		transparent = {
			groups = {
				'Normal', 'NormalNC', 'NormalSB', 'Comment', 'Constant', 'Special', 'Identifier',
				'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
				'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
				'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
				'EndOfBuffer', 'NormalFloat', 'Float', 'FloatBorder', 'FloatShadow', 'FloatShadowThrough',
				'FloatTitle', 'lualine_c_normal', 'lualine_c_inactive', 'LspInlayHint'
			},
			prefixes = { 'NeoTree', 'Cmp', 'Telescope' }
		},

		setters = {
			['NeoTreeFileStatsHeader'] = { fg = 'NONE' },
			['NeoTreeFileStats'] = { fg = 'NONE' },
			['NeoTreeIndentMarker'] = { fg = 'NONE' },
			['NeoTreeMessage'] = { fg = '#00DDFF' },
			['NeoTreeDotfile'] = { fg = '#AACCAA' },

			['NeoTreeGitUntracked'] = { fg = git_added_color },
			['NeoTreeGitAdded'] = { fg = git_added_color },
			['NeoTreeGitModified'] = { fg = '#64B5F6' },
			['GitSignsAdd'] = { fg = '#43A047' },
			['GitSignsChange'] = { fg = '#1E88E5' },

			['LspInlayHint'] = { fg = '#52c78c' },
			['DiagnosticUnnecessary'] = { fg = 'NONE' },
			['Comment'] = { fg = '#52c78c' },
			['PmenuThumb'] = { bg = '#40A4BD' }
		}
	},
	border = 'rounded',
	options = {
		shiftwidth = 2,
		tabstop = 2,
		showmode = false
	}
}
