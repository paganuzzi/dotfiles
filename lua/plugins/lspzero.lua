return{
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v3.x',
	ft={"php"},
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
		local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
		local cmp_action = require('lsp-zero').cmp_action()
		lsp_zero.on_attach(function(client, bufnr)
			lsp_zero.default_keymaps({buffer = bufnr})
		end)


		local cmp = require('cmp')
		cmp.setup({
			sources = {
				{name = 'nvim_lsp'},
				-- { name = "nvim_lsp_signature_help" },
				-- { name = "luasnip" },
				--     { name = "path" },
				-- { name = "buffer" },
				-- { name = "nvim_lua" },
			},
			completion = { completeopt = 'menu,menuone,noinsert' },
			mapping = cmp.mapping.preset.insert({
				-- `Enter` key to confirm completion
				['<CR>'] = cmp.mapping.confirm(),

				-- Ctrl+Space to trigger completion menu
				['<C-Space>'] = cmp.mapping.complete(),

				-- Navigate between snippet placeholder
				['<C-f>'] = cmp_action.luasnip_jump_forward(),
				['<C-b>'] = cmp_action.luasnip_jump_backward(),

				-- Scroll up and down in the completion documentation
				['<C-u>'] = cmp.mapping.scroll_docs(-4),
				['<C-d>'] = cmp.mapping.scroll_docs(4),
			}),
			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end,
			},
		})


		require('mason').setup({})
		require('mason-lspconfig').setup({
			ensure_installed = {"phpactor", "lua_ls","html","cssls","tailwindcss","tsserver"},
			handlers = {
				lsp_zero.default_setup,
			},
		})

		require('lspconfig').phpactor.setup({
			capabilities = lsp_capabilities,
		})
		require('lspconfig').lua_ls.setup({
			capabilities = lsp_capabilities,
		})
		require('lspconfig').html.setup({
			capabilities = lsp_capabilities,
			filetypes={'html','blade','php'},
			init_options = {
				configurationSection = { "html", "css", "javascript" },
				embeddedLanguages = {
					css = true,
					javascript = true
				},
				provideFormatter = true
			}
		})
		require('lspconfig').cssls.setup({
			capabilities = lsp_capabilities,
		})
		require('lspconfig').tailwindcss.setup({
			capabilities = lsp_capabilities,
		})
		require('lspconfig').tsserver.setup({
			capabilities = lsp_capabilities,
		})


	end,
}
