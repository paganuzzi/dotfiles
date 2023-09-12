vim.g.mapleader = ' '

--Code Actions
vim.keymap.set({'n'},'<leader>ca',':lua vim.lsp.buf.code_action()<cr>',{desc = "Code actions"})

--Guardar CTRL-S
vim.keymap.set({'n','i','v'},'<C-s>','<Esc>:w <cr>')

--Lazy
vim.keymap.set({'n',},'<leader>l',':Lazy  <cr>',{desc = "Lazy"})

--Cambio de pestaña
vim.keymap.set({'n',},'<Tab><Tab>',':tabNext <cr>',{desc = "Cambio de pestaña",silent=true})
