vim.g.mapleader = ' '


vim.keymap.set({'n'},'<leader>ca',':lua vim.lsp.buf.code_action()<cr>',{desc = "Code actions"})
vim.keymap.set({'n','i','v'},'<C-s>','<Esc>:w <cr>')
vim.keymap.set({'n','i','v'},'<leader>gl',':TermExec cmd="lazygit"<cr>',{desc = "lazyGit"})
