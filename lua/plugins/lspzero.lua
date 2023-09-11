return{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		event = "VeryLazy",
		dependencies = {
			"williamboman/mason.nvim",
    	"williamboman/mason-lspconfig.nvim",
			'neovim/nvim-lspconfig',
			'hrsh7th/nvim-cmp',
			'hrsh7th/cmp-nvim-lsp',
			'L3MON4D3/LuaSnip'
		},
		config = function()
			local lsp_zero = require('lsp-zero')

			lsp_zero.on_attach(function(client, bufnr)
				vim.api.nvim_create_autocmd('LspAttach', {
					group = vim.api.nvim_create_augroup('UserLspConfig', {}),
					callback = function(ev)
						-- Enable completion triggered by <c-x><c-o>
						vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'

						-- Buffer local mappings.
						-- See `:help vim.lsp.*` for documentation on any of the below functions
						local opts = { buffer = bufnr }
						vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
						vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
						vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
						vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
						vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
						vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
						vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
						vim.keymap.set('n', '<space>wl', function()
							print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
						end, opts)
						vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
						vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
						vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
						vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
						vim.keymap.set('n', '<space>f', function()
							vim.lsp.buf.format { async = true }
						end, opts)
					end,
				})
			end)
			local cmp = require('cmp')
			cmp.setup({
				mapping = {
					['<CR>'] = cmp.mapping.confirm({ select = true }),
				},
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
				})
			})
			require('mason').setup({})
			require('mason-lspconfig').setup({
				ensure_installed = { "lua_ls", "phpactor" },
				handlers = {
					lsp_zero.default_setup,
				},
			})
		end,
	}
