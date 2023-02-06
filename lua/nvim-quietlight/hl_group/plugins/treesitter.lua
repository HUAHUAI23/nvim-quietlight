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
		-- Literals.
		["@string"] = { link = "String" },
		["@string.regex"] = {
			fg = palette.gui.cyan._0,
			bg = palette.gui.transparent,
			italic = true,
			ctermfg = palette.cterm.blue._50,
			ctermbg = palette.cterm.transparent,
		},

		["@string.special"] = { link = "String" },
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
		-- ["@const.macro"] = { link = "Macro" },

		["@symbol"] = { link = "Special" },

		-- Text.
		["@text.environment.name"] = { link = "Type" },
		["@text.reference"] = { link = "Constant" },

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
