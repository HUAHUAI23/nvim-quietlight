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

	-- define nvim terminal ANSI colors
	local terminal_colors = {
		colors1 = {
			terminal_color_0 = "#f5f5f5",
			terminal_color_1 = "#aa3731",
			terminal_color_2 = "#448c27",
			terminal_color_3 = "#ab6526",
			terminal_color_4 = "#4b83cd",
			terminal_color_5 = "#7a3e9d",
			terminal_color_6 = "#00ad9c",
			terminal_color_7 = "#a8a19f",
			terminal_color_8 = "#777777",
			terminal_color_9 = "#aa3731",
			terminal_color_10 = "#448c27",
			terminal_color_11 = "#ab6526",
			terminal_color_12 = "#4b83cd",
			terminal_color_13 = "#7a3e9d",
			terminal_color_14 = "#00ad9c",
			terminal_color_15 = "#f5f5f5",
		},
		colors2 = {
			terminal_color_0 = "#33374C",
			terminal_color_1 = "#717AA8",
			terminal_color_2 = "#717AA8",
			terminal_color_3 = "#717AA8",
			terminal_color_4 = "#33374C",
			terminal_color_5 = "#5F005F",
			terminal_color_6 = "#717AA8",
			terminal_color_7 = "#333333",
			terminal_color_8 = "#33374C",
			terminal_color_9 = "#717AA8",
			terminal_color_10 = "#717AA8",
			terminal_color_11 = "#717AA8",
			terminal_color_12 = "#717AA8",
			terminal_color_13 = "#7A3E9D",
			terminal_color_14 = "#717AA8",
			terminal_color_15 = "#777777",
		},
	}
	local colorcaseList = {
		"colors1",
		"colors2",
	}
	if vim.tbl_contains(colorcaseList, opts.ansi_terminal_colors) then
		for k, v in pairs(terminal_colors[opts.ansi_terminal_colors]) do
			vim.g[k] = v
		end
	end

	-- set other plugin highlights
	require("nvim-quietlight.hl_group.plugins.others")
end

M.set_hl = function(hl_group)
	for k, v in pairs(hl_group or {}) do
		vim.api.nvim_set_hl(0, k, v)
	end
end
return M
