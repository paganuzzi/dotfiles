return {
	"akinsho/toggleterm.nvim",
	version = "*",
	event = "VeryLazy",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<F12>]],
			insert_mappings = true,
			terminal_mappings = true,
		})
	end,
}
