return {
	"nvim-tree/nvim-tree.lua",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local keymap, nvim_tree = vim.keymap, require("nvim-tree")
		
		nvim_tree.setup({
			disable_netrw = false,
  		hijack_netrw = true,
			auto_reload_on_write = true,
			view = { width = 30, side = "left", signcolumn = "yes" },
			renderer = { icons = { webdev_colors = true } },
			hijack_directories = { enable = true, auto_open = true },
  		git = { enable = true, ignore = true, timeout = 400 },
			actions = {
				use_system_clipboard = true,
				change_dir = { enable = true },
				open_file = { quit_on_open = false },
			},
		})

		keymap.set("n", "<C-n>", require("nvim-tree.api").tree.toggle, { silent = true, desc = "toggle nvim-tree"})
	end
}
