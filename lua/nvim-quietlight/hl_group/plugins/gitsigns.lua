local M = {}

-- local palette = require("nvim-quietlight.palette.quiet")
---@diagnostic disable-next-line: unused-local
M.hl_group = function(palette, opts)
	return {
		GitSignsAdd = {
			fg = palette.gui.green._50,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.green._0,
			ctermbg = palette.cterm.transparent,
		}, -- diff mode: Added line |diff.txt|
		GitSignsChange = {
			fg = palette.gui.orange._0,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.orange._0,
			ctermbg = palette.cterm.transparent,
		}, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = {
			fg = palette.gui.red._50,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.red._100,
			ctermbg = palette.cterm.transparent,
		}, -- diff mode: Deleted line |diff.txt|
	}
end

return M
