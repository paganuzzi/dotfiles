return{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "VeryLazy",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"lua",
			"luadoc",
			"php",
			"phpdoc",
		},
		highlight = {
			enable = true
		},
		ident = {
			enable = true
		}
	} 
}
