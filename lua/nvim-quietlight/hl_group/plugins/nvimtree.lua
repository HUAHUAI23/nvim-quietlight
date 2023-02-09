local M = {}

-- local opts = require("nvim-quietlight.base_configuration")
-- local palette = require("nvim-quietlight.palette.quiet")
---@diagnostic disable-next-line: unused-local
M.hl_group = function(palette, opts)
	return {
		NvimTreeFolderName = {
			fg = palette.gui.purple._0,
			bg = palette.gui.transparent,
			bold = true,
			ctermfg = palette.cterm.purple._0,
			ctermbg = palette.cterm.transparent,
		},
		NvimTreeRootFolder = {
			fg = palette.gui.purple._0,
			bg = palette.gui.transparent,
			bold = true,
			ctermfg = palette.cterm.purple._0,
			ctermbg = palette.cterm.transparent,
		},
	}
end

return M
