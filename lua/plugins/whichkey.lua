return {
  "folke/which-key.nvim",
  priority = 1,
	init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
	config = function()
		local wk = require("which-key")
		wk.register({
			["<leader>f"] = { name = "Telescope" },
			["<leader>l"] = { name = "Lazy" },
			["<leader>x"] = { name = "Fix" },
			["<leader>d"] = { name = "DB" },
			["<leader>g"] = { name = "Git" },
			["gc"] = { name = "Comment" },
			["<leader>h"] = { name = "Harpoon" },
			["<leader>c"] = { name = "Code Actions" },
		})
	end,
	opts = {
		plugins = {
			marks = false,
			registers = false,
			spelling = {
				enabled = true,	
				suggestions = 50,
			},
		},
	},
}
