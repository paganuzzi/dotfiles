return {
	"akinsho/toggleterm.nvim",
	version = "*",
	event = "VeryLazy",
	config = function()
		vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]])
		vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
		require("toggleterm").setup({
			open_mapping = [[<F12>]],
			insert_mappings = true,
			terminal_mappings = true,
			direction = "horizontal",
		})
	end,
}
