vim.cmd("set relativenumber")

--Easy Align
vim.api.nvim_set_keymap('x', 'ga', '<Plug>(EasyAlign)', {noremap = false})
vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)', {noremap = false})

--Translator
vim.api.nvim_set_keymap('v', '<leader>p', '<cmd>Translate ru<CR>', {})
vim.api.nvim_set_keymap('v', '<leader>pa', '<cmd>Translate en -output=replace<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>pw', 'viw<cmd>Translate en -output=replace<CR><ESC>', {})


