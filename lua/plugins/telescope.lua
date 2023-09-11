return{
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	event = "VeryLazy",
	opts = {
		defaults = {
			layout_strategy = "horizontal",
			layout_config = {
				preview_cutoff = 10,
				horizontal = {
            height = 0.9,
						preview_width = 0.65,
						preview_cutoff = 120,
            prompt_position = "top",
            width = 0.95
          },
			},
			preview = {
				treesitter = true
			}
		}
	},
	keys = {
		{"<leader>ff","<cmd>Telescope find_files<cr>",desc = "Telescope Find Files"}, 
		{"<C-p>","<cmd>Telescope find_files<cr>",desc = "Telescope Find Files"}, 
		{"<leader>fg","<cmd>Telescope live_grep<cr>",desc = "Telescope Live Grep"}, 
		{"<leader>fb","<cmd>Telescope buffers<cr>",desc = "Telescope Buffers"}, 
		{"<leader>,","<cmd>Telescope buffers<cr>",desc = "Telescope Buffers"}, 
		{"<leader>fh","<cmd>Telescope help_tags<cr>",desc = "Telescope Help Tags"}, 
		{"<leader>fk","<cmd>Telescope keymaps<cr>",desc = "Telescope Keymaps"}, 
	},
}
