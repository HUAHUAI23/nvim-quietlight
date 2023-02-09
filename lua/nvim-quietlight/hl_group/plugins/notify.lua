local M = {}

-- local opts = require("nvim-quietlight.base_configuration")
-- local palette = require("nvim-quietlight.palette.quiet")
---@diagnostic disable-next-line: unused-local
M.hl_group = function(palette, opts)
	return {
		NotifyINFOBorder = {
			fg = palette.gui.gray._50,
			bg = palette.gui.transparent,
			bold = true,
			ctermfg = palette.cterm.gray._100,
			ctermbg = palette.cterm.transparent,
		},
		NotifyINFOIcon = {
			fg = palette.gui.gray._50,
			bg = palette.gui.transparent,
			bold = true,
			ctermfg = palette.cterm.gray._100,
			ctermbg = palette.cterm.transparent,
		},
		NotifyINFOTitle = {
			fg = palette.gui.gray._50,
			bg = palette.gui.transparent,
			bold = true,
			ctermfg = palette.cterm.gray._100,
			ctermbg = palette.cterm.transparent,
		},
		NotifyWARNBorder = {
			fg = palette.gui.purple._50,
			bg = palette.gui.transparent,
			bold = true,
			ctermfg = palette.cterm.purple._50,
			ctermbg = palette.cterm.transparent,
		},
		NotifyWARNIcon = {
			fg = palette.gui.purple._50,
			bg = palette.gui.transparent,
			bold = true,
			ctermfg = palette.cterm.purple._50,
			ctermbg = palette.cterm.transparent,
		},
		NotifyWARNTitle = {
			fg = palette.gui.purple._50,
			bg = palette.gui.transparent,
			bold = true,
			ctermfg = palette.cterm.purple._50,
			ctermbg = palette.cterm.transparent,
		},
		NotifyERRORBorder = {
			fg = palette.gui.red._0,
			bg = palette.gui.transparent,
			bold = true,
			ctermfg = palette.cterm.red._0,
			ctermbg = palette.cterm.transparent,
		},
		NotifyERRORIcon = {
			fg = palette.gui.red._0,
			bg = palette.gui.transparent,
			bold = true,
			ctermfg = palette.cterm.red._0,
			ctermbg = palette.cterm.transparent,
		},
		NotifyERRORTitle = {
			fg = palette.gui.red._0,
			bg = palette.gui.transparent,
			bold = true,
			ctermfg = palette.cterm.red._0,
			ctermbg = palette.cterm.transparent,
		},
	}
end

return M
