local M = {}
-- local palette = require("nvim-quietlight.palette.quiet")
-- local opts = require("nvim-quietlight.base_configuration")

M.hl_group = function(palette, opts)
	-- M.hl_group = function()
	return {
		-- Normal text highlights.
		Normal = {
			fg = palette.gui.black._50,
			bg = opts.transparent_background and palette.gui.transparent or palette.gui.white._50,
			ctermfg = palette.cterm.gray._0,
			ctermbg = opts.transparent_background and palette.cterm.transparent or palette.cterm.white._50,
		},
		NormalNC = {
			fg = palette.gui.black._50,
			bg = (opts.dim_inactive_windows.enabled and (opts.dim_inactive_windows.color or palette.gui_dim_inactive))
				or (opts.transparent_background and palette.gui.transparent)
				or palette.gui.white._50,
			ctermfg = palette.cterm.gray._0,
			ctermbg = (
				opts.dim_inactive_windows.enabled and (opts.dim_inactive_windows.color or palette.cterm_dim_inactive)
			)
				or (opts.transparent_background and palette.cterm.transparent)
				or palette.cterm.white._50,
		}, -- Non-current windows.
		NormalFloat = {
			fg = palette.gui.black._100,
			bg = palette.gui.white._52,
			ctermfg = palette.cterm.gray._0,
			ctermbg = palette.cterm.white._50,
		},
		-- Fold and sign column highlights.
		Folded = {
			fg = palette.gui.black._50,
			bg = palette.gui.green._0,
			ctermfg = palette.cterm.gray._0,
			ctermbg = palette.cterm.gray._100,
		},
		FoldColumn = {
			fg = palette.gui.transparent,
			bg = palette.gui.green._0,
			ctermfg = palette.cterm.gray.transparent,
			ctermbg = palette.cterm.gray._100,
		},
		SignColumn = {
			fg = palette.gui.transparent,
			bg = palette.gui.white._50,
			ctermfg = palette.cterm.transparent,
			ctermbg = palette.cterm.white._50,
		},
		-- Cursor highlights.
		Cursor = {
			bold = true,
		},
		-- ICursor
		-- CursorIM
		CursorColumn = {
			fg = palette.gui.transparent,
			bg = palette.gui.green._150,
			ctermfg = palette.cterm.transparent,
			ctermbg = palette.cterm.green._100,
		},
		CursorLine = {
			fg = palette.gui.transparent,
			bg = palette.gui.green._150,
			ctermfg = palette.cterm.transparent,
			ctermbg = palette.cterm.green._100,
		},
		ColorColumn = {
			fg = palette.gui.transparent,
			bg = palette.gui.gray._100,
			ctermfg = palette.cterm.transparent,
			ctermbg = palette.cterm.gray._100,
		},
		-- conceal
		-- Visual mode highlights.
		Visual = {
			fg = palette.gui.transparent,
			bg = palette.gui.green._150,
			ctermfg = palette.cterm.transparent,
			ctermbg = palette.cterm.green._100,
		}, -- Visual mode selection.
		VisualNOS = {
			link = "Visual",
		}, -- Visual mode selection when vim is 'Not Owning the Selection'
		-- Line number highlights.
		LineNr = {
			fg = palette.gui.gray._180,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.gray._100,
			ctermbg = palette.cterm.white.transparent,
		},
		CursorLineNr = {
			fg = palette.gui.purple._100,
			bg = palette.gui.transparent,
			bold = true,
			ctermfg = palette.cterm.purple._50,
			ctermbg = palette.cterm.white.transparent,
		},
		-- Popup menu highlights.
		Pmenu = {
			fg = palette.gui.black._50,
			bg = palette.gui.white._50,
			ctermfg = palette.cterm.gray._0,
			ctermbg = palette.cterm.white._50,
		}, -- Popup menu: Selected item.
		PmenuSel = {
			fg = palette.gui.green._100,
			bg = palette.gui.black._50,
			reverse = true,
			ctermfg = palette.cterm.green._50,
			ctermbg = palette.cterm.gray._0,
		}, -- Popup menu: Selected item.
		PmenuSbar = { link = "Pmenu" }, -- Popup menu: Scrollbar.
		PmenuThumb = {
			bg = palette.gui.purple._50,
			ctermbg = palette.cterm.purple._50,
		}, -- Popup menu: Thumb of the scrollbar.
		Question = {
			fg = palette.gui.green._50,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.green._0,
			ctermbg = palette.cterm.transparent,
		}, -- `hit-enter` prompt and yes/no questions
		QuickFixLine = { link = "CursorLine" }, -- Current `quickfix` item in the quickfix window. Combined with `hl-CursorLine` when the cursor is there.
		-- Search/substitution highlights.
		Search = {
			fg = palette.gui.white._50,
			bg = palette.gui.purple._150,
			bold = true,
			ctermfg = palette.cterm.white._50,
			ctermbg = palette.cterm.purple._100,
		},
		Substitute = {
			fg = palette.gui.white._50,
			bg = palette.gui.purple._50,
			bold = true,
			ctermfg = palette.cterm.white._50,
			ctermbg = palette.cterm.purple._50,
		},
		-- Statusline highlights.
		StatusLine = {
			fg = palette.gui.purple._100,
			bg = palette.gui.white._50,
			reverse = true,
			bold = true,
			ctermfg = palette.cterm.purple._100,
			ctermbg = palette.cterm.white._50,
		},
		StatusLineNC = {
			fg = palette.gui.purple._150,
			bg = palette.gui.white._50,
			reverse = true,
			bold = true,
			ctermfg = palette.cterm.purple._100,
			ctermbg = palette.cterm.white._50,
		},
		StatusLineTerm = {
			fg = palette.gui.purple._100,
			bg = palette.gui.white._50,
			reverse = true,
			bold = true,
			ctermfg = palette.cterm.purple._100,
			ctermbg = palette.cterm.white._50,
		},
		StatusLineTermNC = {
			fg = palette.gui.purple._150,
			bg = palette.gui.white._50,
			reverse = true,
			bold = true,
			ctermfg = palette.cterm.purple._100,
			ctermbg = palette.cterm.white._50,
		},
		TabLine = {
			fg = palette.gui.black._50,
			bg = palette.gui.gray._50,
			ctermfg = palette.cterm.gray._0,
			ctermbg = palette.cterm.gray._100,
		},
		TabLineFill = {
			fg = palette.gui.white._50,
			bg = palette.gui.white._50,
			reverse = true,
			ctermfg = palette.cterm.white._50,
			ctermbg = palette.cterm.white._50,
		},
		-- Winbar highlights.
		WinBar = {
			fg = palette.gui.purple._100,
			bg = opts.transparent_background and palette.gui.transparent or palette.gui.white._50,
			bold = true,
			ctermfg = palette.cterm.purple._50,
			ctermbg = opts.transparent_background and palette.cterm.transparent or palette.cterm.white._50,
		}, -- Window bar of current window.
		WinBarNC = { link = "WinBar" }, -- Window bar of not-current windows.
		-- Spelling highlights.
		SpellCap = {
			fg = palette.gui.blue._0,
			bg = palette.gui.transparent,
			undercurl = true,
			ctermfg = palette.cterm.blue._0,
			ctermbg = palette.cterm.transparent,
		},
		SpellLocal = {
			fg = palette.gui.blue._50,
			bg = palette.gui.cyan._0,
			underline = true,
			ctermfg = palette.cterm.blue._150,
			ctermbg = palette.cterm.blue._50,
		},
		SpellBad = {
			fg = palette.gui.red._0,
			bg = palette.gui.transparent,
			undercurl = true,
			ctermfg = palette.cterm.red._0,
			ctermbg = palette.cterm.transparent,
		},
		SpellRare = {
			fg = palette.gui.purple._50,
			bg = palette.gui.purple._0,
			underline = true,
			ctermfg = palette.cterm.purple._50,
			ctermbg = palette.cterm.purple._0,
		},
		-- Warning/error message highlights.
		ErrorMsg = {
			fg = palette.gui.white._50,
			bg = palette.gui.red._50,
			ctermfg = palette.cterm.white._0,
			ctermbg = palette.cterm.red._100,
		},
		WarningMsg = {
			fg = palette.gui.gray._150,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.green._50,
			ctermbg = palette.cterm.transparent,
		},
		-- Diff highlights.
		diffAdded = {
			fg = palette.gui.green._50,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.green._0,
			ctermbg = palette.cterm.transparent,
		},
		diffRemoved = {
			fg = palette.gui.orange._0,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.orange._0,
			ctermbg = palette.cterm.transparent,
		},
		DiffAdd = {
			fg = palette.gui.black._50,
			bg = palette.gui.green._50,
			ctermfg = palette.cterm.green._0,
			ctermbg = palette.cterm.white._50,
		},
		DiffChange = {
			fg = palette.gui.black._50,
			bg = palette.gui.orange._0,
			ctermfg = palette.cterm.gray._0,
			ctermbg = palette.cterm.orange._0,
		},
		DiffDelete = {
			fg = palette.gui.white._50,
			bg = palette.gui.red._50,
			ctermfg = palette.cterm.white._50,
			ctermbg = palette.cterm.red._1000,
		},
		DiffText = {
			fg = palette.gui.white._50,
			bg = palette.gui.blue._100,
			ctermfg = palette.cterm.white._50,
			ctermbg = palette.cterm.blue._100,
		},
		-- Miscellaneous highlights.
		Directory = {
			fg = palette.gui.purple._50,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.purple._50,
			ctermbg = palette.cterm.transparent,
		},
		EndOfBuffer = {
			fg = palette.gui.white._50,
			bg = palette.gui.white._50,
			ctermfg = palette.cterm.white._50,
			ctermbg = palette.cterm.white._50,
		},
		FloatBorder = {
			fg = palette.gui.gray._110,
			-- fg = palette.gui.purple._50,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.purple._50,
			ctermbg = palette.cterm.transparent,
		},
		VertSplit = {
			fg = palette.gui.gray._110,
			bg = opts.transparent_background and palette.gui.transparent or palette.gui.white._50,
			bold = true,
			ctermfg = palette.cterm.purple._50,
			ctermbg = opts.transparent_background and palette.cterm.transparent or palette.cterm.white._50,
		},
		MatchParen = {
			fg = palette.gui.white._50,
			bg = palette.gui.purple._50,
			ctermfg = palette.cterm.gray._0,
			ctermbg = palette.cterm.green._50,
		},
		MsgArea = {
			fg = palette.gui.black._100,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.gray._50,
			ctermbg = palette.cterm.transparent,
		},
		ModeMsg = {
			fg = palette.gui.green._50,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.green._0,
			ctermbg = palette.cterm.transparent,
		},
		MoreMsg = {
			fg = palette.gui.black._100,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.green._0,
			ctermbg = palette.cterm.transparent,
		},
		NonText = {
			fg = palette.gui.gray._100,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.gray._100,
			ctermbg = palette.cterm.transparent,
			bold = true,
		},
		SpecialKey = {
			fg = palette.gui.gray._100,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.gray._100,
			ctermbg = palette.cterm.transparent,
			bold = true,
		},
		Title = {
			fg = palette.gui.red._50,
			bg = palette.gui.transparent,
			bold = true,
			ctermfg = palette.cterm.red._100,
			ctermbg = palette.cterm.transparent,
		},
		InfoPopup = {
			fg = palette.gui.black._50,
			bg = palette.gui.white._50,
			ctermfg = palette.cterm.gray._0,
			ctermbg = palette.cterm.white._50,
		},
		WildMenu = {
			fg = palette.gui.black._50,
			bg = palette.gui.green._100,
			ctermfg = palette.cterm.gray._0,
			ctermbg = palette.cterm.green._50,
		},
		LongLineWarning = {
			fg = palette.gui.transparent,
			bg = palette.gui.yellow._0,
			underline = true,
			ctermfg = palette.cterm.transparent,
			ctermbg = palette.cterm.transparent,
		},
		Underlined = {
			fg = palette.gui.blue._100,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.gray._0,
			ctermbg = palette.cterm.transparent,
		},
		Ignore = {
			fg = palette.gui.transparent,
			bg = palette.gui.transparent,
			ctermfg = palette.cterm.transparent,
			ctermbg = palette.cterm.transparent,
		},
		Error = {
			fg = palette.gui.red._0,
			bg = palette.gui.transparent,
			undercurl = true,
			bold = true,
			ctermfg = palette.cterm.red._0,
			ctermbg = palette.cterm.transparent,
		},
		Todo = {
			fg = palette.gui.purple._0,
			bg = palette.gui.transparent,
			bold = true,
			ctermfg = palette.cterm.gray._50,
			ctermbg = palette.cterm.transparent,
		},
		qfLineNr = {
			fg = palette.gui.yellow._0,
			bg = palette.gui.transparent,
			bold = true,
			ctermfg = palette.cterm.yellow._0,
			ctermbg = palette.cterm.transparent,
		},
		-- qfFileName
	}
end
return M
