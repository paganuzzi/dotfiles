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
				lsp_zero.default_keymaps({buffer = bufnr})
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
