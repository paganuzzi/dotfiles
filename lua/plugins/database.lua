return {
	"kristijanhusak/vim-dadbod-ui",
	dependencies={
		"tpope/vim-dadbod",
		"kristijanhusak/vim-packager",
		"tpope/vim-dotenv"
	},
	cmd={"DBUIToggle"},
	keys={
		{"<leader>db",":tab DBUI<CR>",desc="Open DBUI",silent=true},
		{"<leader>dc",":tabclose<CR>",desc="Close DBUI",silent=true},
	}
}
