return {
	"rcarriga/nvim-notify",
	event = "VeryLazy",
    config = function()
        vim.notify = require("notify")
		vim.notify.setup {
			-- Animation style
			stages = "fade_in_slide_out",
			-- Default timeout for notifications
			timeout = 1500,
			background_colour = "#2E3440",
		}
	end
}
