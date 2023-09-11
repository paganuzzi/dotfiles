return {
  "folke/which-key.nvim",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
	config = function()
		local wk = require("which-key")
		wk.register({
			["<leader>f"] = { name = "Telescope" },
			["<leader>g"] = { name = "Git Fugitive" },
			["<leader>h"] = { name = "Harpoon" },
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