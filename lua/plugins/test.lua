return {
	"vim-test/vim-test",
	-- enabled = false,
	config = function()
		vim.g["test#strategy"] = "neovim"
		vim.g["test#neovim#term_position"] = "vert botright 60"
		vim.g["test#php#phpunit#executable"] = "php artisan test"
	end,
	keys = {
		{ "<leader>tn", ":TestNearest<CR>", desc = "Test Nearest", silent = true },
		{ "<leader>tf", ":TestFile<CR>", desc = "Test File", silent = true },
		{ "<leader>ts", ":TestSuite<CR>", desc = "Test Suite", silent = true },
		{ "<leader>tl", ":TestLast<CR>", desc = "Test Last", silent = true },
		{ "<leader>tv", ":TestVisit<CR>", desc = "Test Visit", silent = true },
	},
}
