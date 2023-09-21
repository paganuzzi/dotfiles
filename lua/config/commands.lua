vim.api.nvim_create_user_command('Guardar', function ()
	vim.cmd([[ALEFix]])
	vim.cmd("<Esc>:w <cr>")
end,
	{})


--Setea el filetype a "blade" cuando el archivo termina en .blade.php
vim.api.nvim_create_augroup("BladeFiltypeRelated", {})
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "*.blade.php" },
	group = "BladeFiltypeRelated",
	callback = function()
		vim.cmd([[set filetype=blade"]])
	end,
})



--Install blade parser
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.blade = {
	install_info = {
		url = "https://github.com/EmranMR/tree-sitter-blade",
		files = { "src/parser.c" },
		branch = "main",
	},
	filetype = "blade",
}

