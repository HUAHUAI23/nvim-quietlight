local base_configuration = {
	transparent_background = false,
	dim_inactive_windows = {
		enabled = false,
		color = nil,
	},
	syntax = {
		booleans = {},
		comments = {},
		identifiers = {},
		statements = {},
		conditionals = {},
		constants = {},
		fields = {},
		functions = {},
		keywords = {},
		loops = {},
		numbers = {},
		operators = {},
		punctuation = {},
		strings = {},
		types = {},
		preproc = {},
	},
	plugins = {
		gitsigns = true,
		lsp = true,
		bufferline = true,
		treesitter = true,
	},
}
return base_configuration
