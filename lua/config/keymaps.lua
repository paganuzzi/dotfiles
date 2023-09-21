vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
--Code Actions
vim.api.nvim_set_keymap('n','<leader>ca',':lua vim.lsp.buf.code_action()<cr>',{desc = "Code actions"})

--Guardar CTRL-S
vim.api.nvim_set_keymap("n",'<C-s>','<Esc>:w <cr>',{silent=true, noremap=true})
vim.api.nvim_set_keymap("v",'<C-s>','<Esc>:w <cr>',{silent=true, noremap=true})
vim.api.nvim_set_keymap("i",'<C-s>','<Esc>:w <cr>',{silent=true, noremap=true})

--Lazy
vim.api.nvim_set_keymap('n','<leader>l',':Lazy  <cr>',{desc = "Lazy"})

--Cambio de pestaña
vim.api.nvim_set_keymap('n','<Tab><Tab>',':tabNext <cr>',{desc = "Cambio de pestaña",silent=true})


