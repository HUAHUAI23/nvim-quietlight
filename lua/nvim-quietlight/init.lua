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
		editor = require("nvim-quietlight.hl_group.editor").hl_group(palette, opts),
		syntax = require("nvim-quietlight.hl_group.syntax").hl_group(palette, opts),
	}

	-- set base_highlights
	for _, hl in pairs(base_highlights) do
		M.set_hl(hl)
	end

	-- set plugin_highlights
	for plugin, enabled in pairs(opts.plugins) do
		if enabled then
			local hl_group = require("nvim-quietlight.hl_group.plugins." .. plugin).hl_group(palette, opts)
			M.set_hl(hl_group)
		end
	end
	-- chanage nvim terminal colors
	vim.g.terminal_ansi_colors = {
		"#f5f5f5",
		"#aa3731",
		"#448c27",
		"#ab6526",
		"#4b83cd",
		"#7a3e9d",
		"#00ad9c",
		"#a8a19f",
		"#777777",
		"#aa3731",
		"#448c27",
		"#ab6526",
		"#4b83cd",
		"#7a3e9d",
		"#00ad9c",
		"#f5f5f5",
	}
end

M.set_hl = function(hl_group)
	for k, v in pairs(hl_group or {}) do
		vim.api.nvim_set_hl(0, k, v)
	end
end
return M
