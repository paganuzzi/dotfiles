return {
	enabled = false,
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "<leader>xx", ":TroubleToggle<cr>", desc = "Trouble" },
		{ "<leader>xw", '<cmd>lua require("trouble").open("workspace_diagnostics")<cr>', desc = "Workspace Diag" },
		{ "<leader>xd", '<cmd>lua require("trouble").open("document_diagnostics")<cr>)', desc = "Document Diag" },
		{ "<leader>xq", '<cmd>lua require("trouble").open("quickfix") <cr>', desc = "Quick Fix" },
		{ "<leader>xl", '<cmd>lua require("trouble").open("loclist") <cr>', desc = "LocList" },
		{ "gR", '<cmd>lua require("trouble").open("lsp_references") <cr>', desc = "Lsp References" },
	},
	opts = {
		position = "bottom", -- position of the list can be: bottom, top, left, right
		height = 10, -- height of the trouble list when position is top or bottom
		width = 50, -- width of the list when position is left or right
		icons = true, -- use devicons for filenames
		mode = "workspace_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
		severity = nil, -- nil (ALL) or vim.diagnostic.severity.ERROR | WARN | INFO | HINT
		fold_open = "", -- icon used for open folds
		fold_closed = "", -- icon used for closed folds
		group = true, -- group results by file
		padding = true, -- add an extra new line on top of the list
		cycle_results = true, -- cycle item list when reaching beginning or end of list
		multiline = true, -- render multi-line messages
		indent_lines = true, -- add an indent guide below the fold icons
		win_config = { border = "single" }, -- window configuration for floating windows. See |nvim_open_win()|.
		auto_open = false, -- automatically open the list when you have diagnostics
		auto_close = false, -- automatically close the list when you have no diagnostics
		auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
		auto_fold = false, -- automatically fold a file trouble list at creation
		auto_jump = { "lsp_definitions" }, -- for the given modes, automatically jump if there is only a single result
		include_declaration = { "lsp_references", "lsp_implementations", "lsp_definitions" }, -- for the given modes, include the declaration of the current symbol in the results
		use_diagnostic_signs = false, -- enabling this will use the signs defined in your lsp client
	},
}
