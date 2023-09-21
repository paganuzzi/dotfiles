return {
	"rcarriga/nvim-notify",
	event = "VeryLazy",
	config = function()
		local notify = require("notify")

		notify.setup({
			timeout = 500,
			minimum_width = 10,
			render = "compact",
			stages = "slide",
		})

		vim.notify = notify
	end,
}
