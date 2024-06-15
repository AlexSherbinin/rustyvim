local transparent = require('transparent')
local theme = require('core.theme')

vim.cmd(string.format('colorscheme %s', theme.colorscheme))
vim.cmd('TransparentEnable')

transparent.setup {
	groups = theme.highlight.transparent.groups
}
for _, prefix in ipairs(theme.highlight.transparent.prefixes) do
	transparent.clear_prefix(prefix)
end

for name, options in pairs(theme.highlight.setters) do
	vim.api.nvim_set_hl(0, name, options)
end

for option_name, option_value in pairs(theme.options) do
	vim.opt[option_name] = option_value
end
