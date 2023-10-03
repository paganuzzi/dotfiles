return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	event = "BufRead",
	opts = {
		whitespace = { highlight = { "Whitespace", "NonText" } },
		scope = {
			include = { node_type = { ["*"] = { "*" } } },
			show_start = false,
		},
	},
}
