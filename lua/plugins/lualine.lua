return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
    		theme = "auto",
    		disabled_filetypes = { 'NvimTree', 'TelescopePrompt' },
				always_divide_middle = true,
				refresh = {
					statusline = 500,
				}
			},
			sections = {}
		})
  end
}
