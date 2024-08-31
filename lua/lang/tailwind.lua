require('lang.utils').install_package('tailwindcss-language-server')
require('lspconfig').tailwindcss.setup {
	settings = {
		tailwindCSS = {
			experimental = {
				classRegex = {
					"tw`([^`]*)",
					"tw\\.style\\(([^)]*)\\)",
					"tw=\"([^\"]*)",
					"tw={\"([^\"}]*)",
					"tw\\.\\w+`([^`]*)",
					"tw\\(.*?\\)`([^`]*)"
				}
			},
			classAttributes = {
				"class",
				"className",
				"ngClass",
				"style"
			}
		}
	}
}
