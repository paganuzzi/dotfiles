return {
	"tpope/vim-fugitive",
	cmd = {"G","Git"},
	keys = {
		{"<leader>gg",":below Git <cr>",{desc="Git Status"}},
		{"<leader>gl",":below Git log --oneline<cr>",{desc="Git Log Oneline"}},
	}
}
