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
vim.api.nvim_set_hl(0, "BufferLineOffsetSeparator", { fg = "#c2c2c2", bg = "#c2c2c2", bold = true })
vim.api.nvim_set_hl(0, "BufferlineCustomeNvimtree", { fg = "#959595", bg = "#c2c2c2", bold = true })
vim.api.nvim_set_hl(0, "BufferLineIndicatorSelected", { fg = "#959595", bold = true })
vim.api.nvim_set_hl(0, "BufferLineIndicator", { fg = "#959595", bold = true })
vim.api.nvim_set_hl(0, "BufferLineIndicatorVisible", { fg = "#959595", bg = "#DFDFDF", bold = true })

vim.api.nvim_set_hl(
	0,
	"BufferLineWarningDiagnosticSelected",
	{ fg = "#959595", bold = true, italic = true, sp = "#959595" }
)
vim.api.nvim_set_hl(0, "BufferLineWarningSelected", { fg = "#959595", bold = true, italic = true, sp = "#959595" })
vim.api.nvim_set_hl(
	0,
	"BufferLineInfoDiagnosticSelected",
	{ fg = "#959595", bold = true, italic = true, sp = "#959595" }
)

vim.api.nvim_set_hl(0, "BufferLineInfoSelected", { fg = "#959595", bold = true, italic = true, sp = "#959595" })
vim.api.nvim_set_hl(
	0,
	"BufferLineErrorDiagnosticSelected",
	{ fg = "#9E9E9E", bold = true, italic = true, sp = "#9E9E9E" }
)
vim.api.nvim_set_hl(0, "BufferLineErrorSelected", { fg = "#9E9E9E", bold = true, italic = true, sp = "#9E9E9E" })

vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { fg = "#959595", bold = true, italic = true, sp = "#959595" })
vim.api.nvim_set_hl(0, "BufferLineCloseButtonSelected", { fg = "#959595", bold = true, sp = "#959595" })

-- make webdevicon colors match the theme
local ok, result = pcall(require, "nvim-web-devicons")
if ok then
	local icons = result.get_icons()
	for _, v in pairs(icons) do
		vim.api.nvim_set_hl(0, "DevIcon" .. v.name, { fg = "#6C6C6C" })
	end
end
