local opt = vim.opt

-- Line numbers
opt.number = true

-- Tabs & Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true

-- Appearance
opt.termguicolors = true
opt.showmode = false
vim.cmd("colorscheme onedark")

-- Performance
opt.updatetime = 250
opt.timeoutlen = 400
