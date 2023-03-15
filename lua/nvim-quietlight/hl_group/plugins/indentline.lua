local M = {}

-- local palette = require("nvim-quietlight.palette.quiet")
---@diagnostic disable-next-line: unused-local
M.hl_group = function(palette, opts)
	-- M.hl_group = function()
	return {
		IndentBlanklineContextChar = {
			fg = palette.gui.black._10,
			bg = palette.gui.transparent,
		},
		IndentBlanklineSpaceCharBlankline = {
			fg = palette.gui.white._220,
			bg = palette.gui.transparent,
			nocombine = true,
		},
		IndentBlanklineSpaceChar = {
			fg = palette.gui.white._220,
			bg = palette.gui.transparent,
			nocombine = true,
		},
		IndentBlanklineChar = {
			fg = palette.gui.white._220,
			bg = palette.gui.transparent,
			nocombine = true,
		},
	}
end

return M
