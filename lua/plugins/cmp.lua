return {
	"hrsh7th/nvim-cmp",
	event = "VeryLazy",
	dependencies = {
		{ 'hrsh7th/nvim-cmp' },           -- Auto-completion plugin
		{ 'hrsh7th/cmp-nvim-lsp' },       -- LSP completion source
		{ 'L3MON4D3/LuaSnip' },           -- Snippet engine
		{ 'saadparwaiz1/cmp_luasnip' },   -- Snippets for completion
	},
	config = function()
		local cmp = require('cmp')
		local luasnip = require('luasnip')

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-e>'] = cmp.mapping.abort(),
				['<CR>'] = cmp.mapping.confirm({ select = true }),
			}),
			sources = {
				{ name = 'nvim_lsp' },  -- LSP completion source
				{ name = 'luasnip' },   -- Snippet completion source
			},
		})
	end,
}
