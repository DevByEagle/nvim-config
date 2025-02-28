local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins" }
	},
	ui = {
		border = "rounded",
    title = "Plugin Manager",
    title_pos = "center",
	},
	rocks = {
		enabled = false,
		hererocks = false,
	},
	-- Colorscheme that will be used when installing plugins.
	install = { colorscheme = { "habamax" } },
	-- Automatically check for plugin updates
  checker = { enabled = true },
})

