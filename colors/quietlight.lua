if vim.version().minor < 7 then
	vim.notify_once("[nvim-quietlight] Neovim 0.7 or higher is required.", vim.log.levels.ERROR)
	return
end

-- Set `termguicolors` before loading the colorscheme.
vim.opt.termguicolors = true

-- Clear all highlight groups before loading the colorscheme.
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end
require("nvim-quietlight").load()
vim.g.colors_name = "quietlight"
