vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>la', ':Lazy<CR>', { desc = "Lazy" })
vim.keymap.set('n', '<leader>ls', ':Lazy sync<CR>', { desc = "Lazy sync" })
