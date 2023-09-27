vim.api.nvim_create_user_command("Guardar", function()
	vim.cmd([[ALEFix]])
	vim.cmd("<Esc>:w <cr>")
end, {})

--highlight yank
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("YankCommands", {}),
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
	end,
})

--Setea el filetype a "blade" cuando el archivo termina en .blade.php
vim.api.nvim_create_augroup("BladeFiltypeRelated", {})
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "*.blade.php" },
	group = "BladeFiltypeRelated",
	callback = function()
		vim.cmd([[set filetype=blade"]])
	end,
})

--LSP Attach
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go Declaration" })
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go Definition" })
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go Implementation" })
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature Help" })
		vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, { desc = "Type Definition" })
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { desc = "Rename" })
		vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
		vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go Reference" })
		vim.keymap.set("n", "<space>f", function()
			vim.lsp.buf.format({ async = true })
		end, { desc = "Format" })
	end,
})

--Install blade parser
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("BladeParser", {}),
	callback = function()
		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		parser_config.blade = {
			install_info = {
				url = "https://github.com/EmranMR/tree-sitter-blade",
				files = { "src/parser.c" },
				branch = "main",
			},
			filetype = "blade",
		}
	end,
})
