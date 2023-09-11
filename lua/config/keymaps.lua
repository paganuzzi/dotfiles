vim.g.mapleader = ' '


vim.keymap.set({'n'},'<leader>ca',':lua vim.lsp.buf.code_action()<cr>',{desc = "Code actions"})
vim.keymap.set({'n','i','v'},'<C-s>','<Esc>:w <cr>')
