local M = {}
-- Imports.
local base_configuration = require("nvim-quietlight.base_configuration")

M.setup = function(user_opts)
	-- merge default and user options
	vim.g.quietlight_opts = vim.tbl_deep_extend("force", vim.g.quietlight_opts or base_configuration, user_opts or {})
end

M.load = function()
	local opts = vim.g.quietlight_opts or base_configuration
	local palette = require("nvim-quietlight.palette.quiet")

	local base_highlights = {
		editor = require("nvim-quietlight.hl_group.editor").hl_group(palette),
		syntax = require("nvim-quietlight.hl_group.syntax").hl_group(palette, opts),
	}

	-- set base_highlights
	for _, hl in pairs(base_highlights) do
		M.set_hl(hl)
	end

	for plugin, enabled in pairs(opts.plugins) do
		if enabled then
			local hl_group = require("nvim-tundra.hl_group.plugins." .. plugin).hl_group(palette, opts)
			M.set_hl(hl_group)
		end
	end
end

M.set_hl = function(hl_group)
	for k, v in pairs(hl_group or {}) do
		-- vim.api.nvim_set_hl(0, "@string", { ctermfg = 142, fg = "#ebdbb2", italic = true })
		vim.api.nvim_set_hl(0, k, v)
	end
end
return M
