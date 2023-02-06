local M = {}

-- local opts = require("nvim-quietlight.base_configuration")
-- local palette = require("nvim-quietlight.palette.quiet")

M.hl_group = function(palette, opts)
	return {
		BufferLineBufferSelected = {
			fg = palette.gui.purple._100,
			bg = opts.transparent_background and palette.gui.transparent or palette.gui.white._50,
			bold = true,
			italic = true,
			ctermfg = palette.cterm.purple._50,
			ctermbg = opts.transparent_background and palette.cterm.transparent or palette.cterm.white._50,
		},
	}
end

return M
