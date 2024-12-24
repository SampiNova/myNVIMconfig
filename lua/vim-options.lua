--vim settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd("set smarttab")
vim.cmd("set number")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("set relativenumber")
vim.cmd("syntax on")
vim.cmd("set so=30")

vim.keymap.set({'i', 'v'}, 'jk', '<ESC>', {})
vim.keymap.set({'i', 'v'}, 'kj', '<ESC>', {})
vim.keymap.set('n', '<C-s>', ':w<CR>', {})

vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', {noremap = true})


vim.g.mapleader = " "


