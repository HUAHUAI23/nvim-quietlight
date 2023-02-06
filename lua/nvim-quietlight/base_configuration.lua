local base_configuration = {
	transparent_background = false,
	dim_inactive_windows = {
		enabled = false,
		color = nil,
	},
	syntax = {
		booleans = {}, --
		comments = {},
		identifiers = {},
		statements = {},
		conditionals = {}, --
		constants = {},
		fields = {}, --
		functions = {},
		keywords = {},
		loops = {},
		numbers = {}, --
		operators = {},
		punctuation = {}, --
		strings = {},
		types = {},
		preproc = {},
	},
	plugins = {
		-- treesitter = true,
		gitsigns = true,
	},
}
return base_configuration
