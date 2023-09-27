return {
	"ahmedkhalf/project.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("project_nvim").setup({})
	end,
	keys = {
		{ "<leader>fp", ":Telescope projects<cr>", { noremap = "true", silent = "true", desc = "Projects" } },
	},
}
