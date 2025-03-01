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
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					{ "branch", fmt = function(name) return string.sub(name, 1, 20) end, color = { gui = "italic,bold" } },
					{ get_git_ahead_behind_info, color = { fg = "#E0C479" } },
					{ "diff", source = diff },
					{ virtual_env, color = { fg = "black", bg = "#F1CA81" } },
				},
			},
		})
  end
}
