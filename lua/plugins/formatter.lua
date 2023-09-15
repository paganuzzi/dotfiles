return {
	"dense-analysis/ale",
	config = function ()
		vim.g.ale_linters_explicit = 1
		vim.g.ale_fixers = {
			['*'] = {'remove_trailing_lines', 'trim_whitespace'},
			['php'] = {'pint'}
		}
		vim.g.ale_fix_on_save = 1
	end
}
