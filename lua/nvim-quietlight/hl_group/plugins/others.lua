-- nvimtree
vim.api.nvim_set_hl(0, "NvimTreeNormal", { fg = "#959595", bold = true })
vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = "#959595", bold = true })
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#959595", bold = true })
vim.api.nvim_set_hl(0, "NvimTreeLspDiagnosticsInformation", { fg = "#959595", bold = true })
vim.api.nvim_set_hl(0, "NvimTreeLspDiagnosticsHint", { fg = "#959595", bold = true })
vim.api.nvim_set_hl(0, "NvimTreeLspDiagnosticsWarning", { fg = "#959595", bold = true })
vim.api.nvim_set_hl(0, "NvimTreeLspDiagnosticsError", { fg = "#959595", bold = true })

-- gitsigns
vim.api.nvim_set_hl(0, "GitSignsChange", { bg = "none", fg = "#959595", bold = true })
vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "none", fg = "#c2c2c2", bold = true })
vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = "none", fg = "#9e9e9e", bold = true })

-- bufferline
-- separator
vim.api.nvim_set_hl(0, "BufferlineCustomeNvimtree", { fg = "#959595", bg = "#c2c2c2", bold = true })
vim.api.nvim_set_hl(0, "BufferLineOffsetSeparator", { fg = "#c2c2c2", bg = "#c2c2c2", bold = true })
vim.api.nvim_set_hl(0, "BufferLineSeparator", { fg = "#c2c2c2", bg = "#d5d5d5", bold = true })
vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", { fg = "#c2c2c2", bold = true })
vim.api.nvim_set_hl(0, "BufferLineTabSeparator", { fg = "#c2c2c2", bg = "#d5d5d5", bold = true })
vim.api.nvim_set_hl(0, "BufferLineTabSeparatorSelected", { fg = "#c2c2c2", bold = true })
vim.api.nvim_set_hl(0, "BufferLineGroupSeparator", { fg = "#c2c2c2", bg = "#c2c2c2", bold = true })

-- indicator
vim.api.nvim_set_hl(0, "BufferLineIndicatorSelected", { fg = "#959595", bold = true })
vim.api.nvim_set_hl(0, "BufferLineIndicator", { fg = "#959595", bold = true })
vim.api.nvim_set_hl(0, "BufferLineIndicatorVisible", { fg = "#959595", bg = "#DFDFDF", bold = true })

-- button
vim.api.nvim_set_hl(0, "BufferLineCloseButtonSelected", { fg = "#959595", bold = true, sp = "#959595" })
vim.api.nvim_set_hl(0, "BufferLineCloseButton", { fg = "#c2c2c2", bg = "#d5d5d5", bold = true })
vim.api.nvim_set_hl(0, "BufferLineCloseButtonVisible", { fg = "#c2c2c2", bg = "#dfdfdf", bold = true })
vim.api.nvim_set_hl(0, "BufferLineTabClose", { fg = "#c2c2c2", bg = "#d5d5d5", bold = true })

-- fill background
vim.api.nvim_set_hl(0, "BufferLineFill", { fg = "#c2c2c2", bg = "#c2c2c2", bold = true })
vim.api.nvim_set_hl(0, "BufferLineBackground", { fg = "#c2c2c2", bg = "#d5d5d5", bold = true })
vim.api.nvim_set_hl(0, "BufferLineGroupLabel", { fg = "#c2c2c2", bg = "#c2c2c2", bold = true })

-- modifier
vim.api.nvim_set_hl(0, "BufferLineModified", { fg = "#959595", bg = "#d5d5d5", bold = true, sp = "#ca7602" })
vim.api.nvim_set_hl(0, "BufferLineModifiedSelected", { fg = "#959595", bold = true, sp = "#959595" })
vim.api.nvim_set_hl(0, "BufferLineModifiedVisible", { fg = "#c2c2c2", bg = "#dfdfdf", bold = true, sp = "#c2c2c2" })

-- visible  5+7
vim.api.nvim_set_hl(0, "BufferLineDiagnosticVisible", { fg = "#aaaaaa", bg = "#dfdfdf" })
vim.api.nvim_set_hl(0, "BufferLineHintDiagnosticVisible", { fg = "#aaaaaa", bg = "#dfdfdf" })
vim.api.nvim_set_hl(0, "BufferLineInfoDiagnosticVisible", { fg = "#aaaaaa", bg = "#dfdfdf" })
vim.api.nvim_set_hl(0, "BufferLineWarningDiagnosticVisible", { fg = "#aaaaaa", bg = "#dfdfdf" })
vim.api.nvim_set_hl(0, "BufferLineErrorDiagnosticVisible", { fg = "#aaaaaa", bg = "#dfdfdf" })

vim.api.nvim_set_hl(0, "BufferLineHintVisible", { fg = "#c2c2c2", bg = "#dfdfdf", bold = true })
vim.api.nvim_set_hl(0, "BufferLineInfoVisible", { fg = "#c2c2c2", bg = "#dfdfdf", bold = true })
vim.api.nvim_set_hl(0, "BufferLineWarningVisible", { fg = "#c2c2c2", bg = "#dfdfdf", bold = true })
vim.api.nvim_set_hl(0, "BufferLineErrorVisible", { fg = "#c2c2c2", bg = "#dfdfdf", bold = true })
vim.api.nvim_set_hl(0, "BufferLineBufferVisible", { fg = "#c2c2c2", bg = "#dfdfdf", bold = true })
vim.api.nvim_set_hl(0, "BufferLineNumbersVisible", { fg = "#c2c2c2", bg = "#dfdfdf", bold = true })
vim.api.nvim_set_hl(0, "BufferLineDuplicateVisible", { fg = "#b8b8b8", bg = "#dfdfdf", bold = true, italic = true })

-- selected 5+7
vim.api.nvim_set_hl(0, "BufferLineDiagnosticSelected", { fg = "#959595", bold = true, italic = true, sp = "#959595" })
vim.api.nvim_set_hl(
	0,
	"BufferLineHintDiagnosticSelected",
	{ fg = "#8d939b", bold = true, italic = true, sp = "#8d939b" }
)
vim.api.nvim_set_hl(
	0,
	"BufferLineInfoDiagnosticSelected",
	{ fg = "#959595", bold = true, italic = true, sp = "#959595" }
)
vim.api.nvim_set_hl(
	0,
	"BufferLineWarningDiagnosticSelected",
	{ fg = "#959595", bold = true, italic = true, sp = "#959595" }
)
vim.api.nvim_set_hl(
	0,
	"BufferLineErrorDiagnosticSelected",
	{ fg = "#9E9E9E", bold = true, italic = true, sp = "#9E9E9E" }
)

vim.api.nvim_set_hl(
	0,
	"BufferLineHintSelected",
	{ fg = "#a1a8b1", bg = "#f3f3f3", bold = true, italic = true, sp = "#a1a8b1" }
)
vim.api.nvim_set_hl(0, "BufferLineInfoSelected", { fg = "#959595", bold = true, italic = true, sp = "#959595" })
vim.api.nvim_set_hl(0, "BufferLineWarningSelected", { fg = "#959595", bold = true, italic = true, sp = "#959595" })
vim.api.nvim_set_hl(0, "BufferLineErrorSelected", { fg = "#9E9E9E", bold = true, italic = true, sp = "#9E9E9E" })
vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { fg = "#959595", bold = true, italic = true, sp = "#959595" })
vim.api.nvim_set_hl(0, "BufferLineNumbersSelected", { fg = "#959595", bold = true, italic = true, sp = "#959595" })
vim.api.nvim_set_hl(0, "BufferLineTabSelected", { fg = "#959595", bg = "#f3f3f3", bold = true })

-- others 5+7
vim.api.nvim_set_hl(0, "BufferLineDiagnostic", { fg = "#aaaaaa", bg = "#d5d5d5", bold = true })
vim.api.nvim_set_hl(0, "BufferLineHintDiagnostic", { fg = "#aaaaaa", bg = "#d5d5d5", bold = true, sp = "#8d939b" })
vim.api.nvim_set_hl(0, "BufferLineInfoDiagnostic", { fg = "#aaaaaa", bg = "#d5d5d5", bold = true, sp = "#3b7b22" })
vim.api.nvim_set_hl(0, "BufferLineWarningDiagnostic", { fg = "#aaaaaa", bg = "#d5d5d5", bold = true, sp = "#b16701" })
vim.api.nvim_set_hl(0, "BufferLineErrorDiagnostic", { fg = "#aaaaaa", bg = "#d5d5d5", bold = true, sp = "#b30000" })

vim.api.nvim_set_hl(0, "BufferLineHint", { fg = "#c2c2c2", bg = "#d5d5d5", bold = true, sp = "#a1a8b1" })
vim.api.nvim_set_hl(0, "BufferLineInfo", { fg = "#c2c2c2", bg = "#d5d5d5", bold = true, sp = "#448c27" })
vim.api.nvim_set_hl(0, "BufferLineWarning", { fg = "#c2c2c2", bg = "#d5d5d5", bold = true, sp = "#ca7602" })
vim.api.nvim_set_hl(0, "BufferLineError", { fg = "#c2c2c2", bg = "#d5d5d5", bold = true, sp = "#cc0000" })
vim.api.nvim_set_hl(0, "BufferLineNumbers", { fg = "#c2c2c2", bg = "#d5d5d5", bold = true })
vim.api.nvim_set_hl(0, "BufferLineTab", { fg = "#c2c2c2", bg = "#d5d5d5", bold = true })
vim.api.nvim_set_hl(0, "BufferLineBuffer", { fg = "#c2c2c2", bg = "#d5d5d5", bold = true })

-- ------------
-- treesitter markdown

vim.api.nvim_set_hl(0, "@text.title", { bold = true, fg = "#535759" })
vim.api.nvim_set_hl(0, "@text.strong", { bold = true, fg = "#686C6D" })
vim.api.nvim_set_hl(0, "@text.literal", { fg = "#656A6C", bg = "#EDEDF5" })
vim.api.nvim_set_hl(0, "@text.reference", { fg = "#6886AA", bold = true })
vim.api.nvim_set_hl(0, "@text.uri", { fg = "#6886AA" })
vim.api.nvim_set_hl(0, "@punctuation.special", { fg = "#919394", bold = true })
vim.api.nvim_set_hl(0, "@text.quote", { fg = "#A7A9AA", bg = "#EDEDF5" })
vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true })
vim.api.nvim_set_hl(0, "SpellLocal", { underline = true })

-- make webdevicon colors match the theme
local ok, result = pcall(require, "nvim-web-devicons")
if ok then
	local icons = result.get_icons()
	for _, v in pairs(icons) do
		vim.api.nvim_set_hl(0, "DevIcon" .. v.name, { fg = "#6C6C6C" })
	end
end
