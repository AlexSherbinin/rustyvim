return {
	'nvim-treesitter/nvim-treesitter',
	opts = {
		ensure_installed = { 'lua', 'rust', 'toml', 'json', 'yaml', 'tsx' },
		auto_install = true,
		highlight = {
			enable = true
		}
	}
}
