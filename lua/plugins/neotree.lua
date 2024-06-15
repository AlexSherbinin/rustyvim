return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},

	config = function()
		require('neo-tree').setup {
			popup_border_style = require('core.theme').border,
			window = {
				position = "float"
			},
			default_component_configs = {
				git_status = {
					symbols = {
						added     = "Added  ",
						modified  = "Modified  ",
						deleted   = "Deleted  ",
						renamed   = "Renamed  ",
						untracked = "Untracked",
						ignored   = "Ignored",
						unstaged  = "Unstaged",
						staged    = "Staged",
						conflict  = "Conflict",
					}
				},
				modified = {
					symbol = "  "
				},
				last_modified = {
					enabled = false
				}
			}
		}

		local mappings = require('core.mappings').neo_tree
		vim.keymap.set('n', mappings.open_file_tree, '<Cmd>Neotree<CR>')
	end
}
