return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v3.x",
	ft = { "php" },
	event = "BufAdd",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-buffer",
		"rafamadriz/friendly-snippets",
	},
	config = function()
		local lsp_zero = require("lsp-zero")
		local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
		local cmp_action = require("lsp-zero").cmp_action()
		lsp_zero.on_attach(function(client, bufnr)
			lsp_zero.default_keymaps({ buffer = bufnr })
		end)

		local cmp = require("cmp")
		local luasnip = require("luasnip")
		require("luasnip.loaders.from_vscode").lazy_load()
		luasnip.config.setup({})

		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = { "phpactor", "lua_ls", "html", "cssls", "tailwindcss", "tsserver" },
			automatic_installation = true,
			handlers = {
				lsp_zero.default_setup,
			},
		})

		require("lspconfig").phpactor.setup({})
		require("lspconfig").lua_ls.setup({
			settings = {
				Lua = {
					telemetry = { enable = false },
					workspace = {
						checkThirdParty = false,
					},
					completion = {
						callSnippet = "Replace",
					},
				},
			},
		})
		require("lspconfig").html.setup({
			filetypes = { "html", "blade", "php" },
			init_options = {
				configurationSection = { "html", "css", "javascript" },
				embeddedLanguages = {
					css = true,
					javascript = true,
				},
				provideFormatter = true,
			},
		})
		require("lspconfig").cssls.setup({})
		require("lspconfig").tailwindcss.setup({})
		require("lspconfig").tsserver.setup({})

		cmp.setup({
			sources = {
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
			},
			completion = { completeopt = "menu,menuone,noinsert" },
			mapping = cmp.mapping.preset.insert({
				-- `Enter` key to confirm completion
				["<CR>"] = cmp.mapping.confirm(),

				-- Ctrl+Space to trigger completion menu
				["<C-Space>"] = cmp.mapping.complete(),

				-- Navigate between snippet placeholder
				["<C-f>"] = cmp_action.luasnip_jump_forward(),
				["<C-b>"] = cmp_action.luasnip_jump_backward(),

				-- Scroll up and down in the completion documentation
				["<C-u>"] = cmp.mapping.scroll_docs(-4),
				["<C-d>"] = cmp.mapping.scroll_docs(4),
			}),
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
		})
	end,
}
