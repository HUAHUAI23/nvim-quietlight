local M = {}
M.setup = function(user_opts)
	-- TODO: merge user config and default config
	-- vim.tbl_deep_extend
end

M.load = function()
	local palette = require("nvim-quietlight.palette.quiet")
	local base_highlights = {
		editor = require("nvim-quietlight.hl_group.editor").hl_group(palette),
	}
	for _, hl in pairs(base_highlights) do
		M.set_hl(hl)
	end
end

M.set_hl = function(hl_group)
	for k, v in pairs(hl_group or {}) do
		-- vim.api.nvim_set_hl(0, "@string", { ctermfg = 142, fg = "#ebdbb2", italic = true })
		vim.api.nvim_set_hl(0, k, v)
	end
end
return M
