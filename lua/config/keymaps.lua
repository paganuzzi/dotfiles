vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Guardar CTRL-S
vim.api.nvim_set_keymap("n", "<C-s>", "<Esc>:w <cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("v", "<C-s>", "<Esc>:w <cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w <cr>", { silent = true, noremap = true })

--Lazy
vim.api.nvim_set_keymap("n", "<leader>l", ":Lazy  <cr>", { desc = "Lazy" })

--Cambio de pestaña
vim.keymap.set({ "n" }, "<Tab><Tab>", ":tabNext <cr>", { desc = "Cambio de pestaña", silent = true })

--Toggleterm
vim.keymap.set("n", "<leader>tts", ":TermSelect <cr>", { desc = "ToggleTerm Select", noremap = true, silent = true })
vim.keymap.set("n", "<leader>ttt", ":ToggleTerm <cr>", { desc = "ToggleTerm Toggle", noremap = true, silent = true })
vim.keymap.set(
	"n",
	"<leader>ttr",
	":ToggleTermSetName <cr>",
	{ desc = "ToggleTerm Rename", noremap = true, silent = true }
)
