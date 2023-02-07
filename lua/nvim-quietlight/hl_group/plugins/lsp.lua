local M = {}

-- local opts = require("nvim-quietlight.base_configuration")
-- local palette = require("nvim-quietlight.palette.quiet")

M.hl_group = function(palette, opts)
	return {
		LspReferenceText = {
			fg = palette.gui.green._100,
			ctermfg = palette.cterm.green._50,
		},
		LspReferenceRead = {
			fg = palette.gui.green._100,
			ctermfg = palette.cterm.green._50,
		},
		LspReferenceWrite = {
			fg = palette.gui.green._100,
			ctermfg = palette.cterm.green._50,
		},
		LspCodeLens = { fg = palette.gui.gray._50, ctermfg = palette.cterm.gray._100 }, -- Used to color the virtual text of the codelens.
		LspCodeLensSeparator = {
			fg = palette.gui.transparent,
			ctermfg = palette.cterm.transparent,
		}, -- Used to color the separator between two or more code lenses.
		LspSignatureActiveParameter = {
			fg = palette.gui.green._50,
			ctermfg = palette.cterm.green._50,
		}, -- Used to highlight the active parameter in the signature help.
		DiagnosticError = {
			fg = palette.gui.red._30,
			bg = opts.transparent_background and palette.gui.transparent or palette.gui.white._50,
			bold = true,
			ctermfg = palette.cterm.red._0,
			ctermbg = opts.transparent_background and palette.cterm.transparent or palette.cterm.white._50,
		},
		DiagnosticWarn = {
			fg = palette.gui.orange._30,
			bg = opts.transparent_background and palette.gui.transparent or palette.gui.white._50,
			bold = true,
			ctermfg = palette.cterm.orange._0,
			ctermbg = opts.transparent_background and palette.cterm.transparent or palette.cterm.white._50,
		},
		DiagnosticInfo = {
			fg = palette.gui.green._50,
			bg = opts.transparent_background and palette.gui.transparent or palette.gui.white._50,
			bold = true,
			ctermfg = palette.cterm.green._50,
			ctermbg = opts.transparent_background and palette.cterm.transparent or palette.cterm.white._50,
		},
		DiagnosticHint = {
			fg = palette.gui.gray._100,
			bg = opts.transparent_background and palette.gui.transparent or palette.gui.white._50,
			bold = true,
			ctermfg = palette.cterm.gray._50,
			ctermbg = opts.transparent_background and palette.cterm.transparent or palette.cterm.white._50,
		},
		-- https://neovim.io/doc/user/diagnostic.html
		-- DiagnosticUnderlineError xxx cterm=underline gui=underline guisp=Red
		-- underline
		-- DiagnosticUnderlineError = { sp = "#a6b39b", underdotted = true },
		-- DiagnosticUnderlineError, DiagnosticUnderlineWarn
		-- https://github.com/neoclide/coc.nvim/issues/472
		-- DiagnosticUnderlineWarn = { udercurl = true },
	}
end

return M
