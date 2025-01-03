vim.cmd("set spell spelllang=ru_ru,en_us")
vim.api.nvim_set_keymap('n', '<leader>s', "<cmd>set spell<CR>", {})
vim.api.nvim_set_keymap('n', '<leader>sn', "<cmd>set nospell<CR>", {})

