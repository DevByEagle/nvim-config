return {
	"neovim/nvim-lspconfig",
	event = { "BufRead", "BufNewFile" },
	config = function()
		local lspconfig = require('lspconfig')

		lspconfig.pylsp.setup{}
	end,
}
