return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "BufAdd",
	main = "nvim-treesitter.configs",
	config = function()
		require("nvim-treesitter.configs").setup({
			sync_install = true,
			incremental_selection = {
				enable = true,
			},
			ensure_installed = {
				"lua",
				"luadoc",
				"php",
				"phpdoc",
				"blade",
				"html",
				"css",
			},
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			autotag = {
				enable = true,
				enable_rename = true,
				enable_close = true,
				enable_close_on_slash = true,
				filetypes = {
					"html",
					"php",
					"blade",
					"html",
					"javascript",
					"typescript",
					"javascriptreact",
					"typescriptreact",
					"svelte",
					"vue",
					"tsx",
					"jsx",
					"rescript",
					"xml",
					"markdown",
				},
			},
		})
	end,
}
