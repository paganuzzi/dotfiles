return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader>hh", '<cmd>:lua require("harpoon.ui").toggle_quick_menu()<CR>', desc = "Harpoon Toggle Menu" },
		{ "<C-a>", '<cmd>:lua require("harpoon.mark").add_file()<CR>', desc = "Harpoon Add File" },
		{ "<A-left>", '<cmd>:lua require("harpoon.ui").nav_next()<CR>', desc = "Harpoon Next File" },
		{ "<A-right>", '<cmd>:lua require("harpoon.ui").nav_prev()<CR>', desc = "Harpoon Prev File" },
	},
}
