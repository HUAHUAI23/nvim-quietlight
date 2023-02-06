local M = {}

---@diagnostic disable-next-line: unused-local
M.hl_group = function(palette, opts)
	if vim.version().minor < 8 then
		vim.notify_once(
			"[nvim-quietlight] nvim-treesitter integration requires Neovim 0.8 or higher. Disable the nvim-treesitter integration in your `setup()` table to avoid this message.",
			vim.log.levels.WARN
		)
		return
	end
	return {
		-- Punctuation.
		-- e.g., brackets and commas.
		["@punct.delimiter"] = { link = "Delimiter" },
		["@punct.bracket"] = { link = "Delimiter" },
		["@punct.special"] = { link = "Delimiter" },

		-- Literals.
		["@string"] = { link = "String" },
		["@string.regex"] = {
			fg = palette.gui.cyan._0,
			bg = palette.gui.transparent,
			italic = true,
			ctermfg = palette.cterm.blue._50,
			ctermbg = palette.cterm.transparent,
		},
		["@string.escape"] = { link = "@string.regex" },
		["@string.special"] = { link = "String" },
		["@character"] = { link = "SpecialKey" },
		["@character.special"] = { link = "SpecialKey" },

		["@number"] = { link = "Number" },
		["@float"] = { link = "Float" },
		["@boolean"] = { link = "Boolean" },

		-- Functions
		["@function"] = { link = "Function" },
		["@method"] = { link = "Function" },
		["@method.call"] = { link = "Function" },

		["@constructor"] = { link = "Function" },
		["@parameter"] = {
			fg = palette.gui.blue._150,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.blue._150,
			ctermbg = palette.cterm.transparent,
		},
		["@parameter.reference"] = { link = "@parameter" },

		-- Keywords.
		["@keyword"] = { link = "Keyword" },
		["@keyword.function"] = { link = "Keyword" },
		["@keyword.operator"] = { link = "Exception" },
		["@keyword.return"] = { link = "Exception" },

		["@conditional"] = { link = "Conditional" },
		["@repeat"] = { link = "Repeat" },
		-- ["@debug"] = { link = "Debug" },
		-- ["@label"] = { link = "Label" },
		-- ["@include"] = { link = "Include" },
		["@exception"] = { link = "Exception" },

		-- Types.
		["@type"] = { link = "Type" },
		["@type.builtin"] = { link = "@variable.builtin" },
		["@type.qualifier"] = { link = "Type" },
		["@type.definition"] = { link = "Type" },

		["@storageclass"] = { link = "StorageClass" },
		["@attribute"] = { link = "Constant" },
		["@field"] = { link = "@parameter" },
		["@property"] = { link = "@field" },

		-- Identifiers.
		["@constant"] = { link = "Constant" },
		["@constant.builtin"] = {
			link = "Constant",
		},
		["@variable.builtin"] = {

			fg = palette.gui.red._0,
			bg = palette.gui.transparent,
			italic = true,
			ctermfg = palette.cterm.red._0,
			ctermbg = palette.cterm.transparent,
		},
		["@const.builtin"] = {
			fg = palette.gui.orange._0,
			bg = palette.gui.transparent,
			bold = true,
			italic = true,
			ctermfg = palette.cterm.orange._0,
			ctermbg = palette.cterm.transparent,
		},
		["@const.macro"] = { link = "Macro" },

		["@symbol"] = { link = "Special" },

		-- Text. -- Markdown

		["@text"] = { link = "Normal" },
		["@text.strong"] = {
			fg = palette.gui.red._30,
			bg = opts.transparent_background and palette.gui.transparent or palette.gui.white._50,
			bold = true,
			ctermfg = palette.cterm.red._0,
			ctermbg = opts.transparent_background and palette.cterm.transparent or palette.cterm.white._50,
		},

		["@text.emphasis"] = {
			fg = palette.gui.green._50,
			bg = opts.transparent_background and palette.gui.transparent or palette.gui.white._50,
			bold = true,
			ctermfg = palette.cterm.green._50,
			ctermbg = opts.transparent_background and palette.cterm.transparent or palette.cterm.white._50,
		},
		["@text.underline"] = { underline = true },
		["@text.strike"] = { strikethrough = true },
		["@text.title"] = { link = "Keyword" },
		["@text.literal"] = { link = "String" },
		["@text.uri"] = { link = "Keyword" },
		["@text.math"] = { link = "Special" },
		["@text.environment"] = { link = "Macro" },
		["@text.environment.name"] = { link = "Type" },
		["@text.reference"] = { link = "Constant" },

		["@text.danger"] = { link = "Exception" },
		["@text.note"] = {
			fg = palette.gui.gray._100,
			bg = opts.transparent_background and palette.gui.transparent or palette.gui.white._50,
			bold = true,
			ctermfg = palette.cterm.gray._50,
			ctermbg = opts.transparent_background and palette.cterm.transparent or palette.cterm.white._50,
		},

		["@text.todo"] = { link = "Todo" },
		["@text.warning"] = {
			fg = palette.gui.orange._30,
			bg = opts.transparent_background and palette.gui.transparent or palette.gui.white._50,
			bold = true,
			ctermfg = palette.cterm.orange._0,
			ctermbg = opts.transparent_background and palette.cterm.transparent or palette.cterm.white._50,
		},

		-- Tags.
		["@tag.delimiter"] = { link = "Comment" },
		["@tag.attribute"] = { link = "@parameter" },

		-- Miscellaneous.
		["@comment"] = { link = "Comment" },
		["@define"] = { link = "PreProc" },
		["@error"] = { link = "Error" },
		["@operator"] = { link = "Operator" },
		["@preproc"] = { link = "Preproc" },
	}
end

return M
