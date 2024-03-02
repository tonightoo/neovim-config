vim.g.mapleader = ' '
local opts = { noremap = true, silent = true}
local keymap = vim.keymap.set
keymap('n', '<Esc><Esc>', ':nohlsearch<CR><ESC>', opts)
keymap('i', 'jj', '<ESC>', otps)
keymap('n', '<leader>a', 'ggvG$', opts)
keymap('v', '<leader>jj', '<ESC>', opts)
keymap('i', '<S-BS>', '<BS>', opts)
keymap('n', '<CR>', 'A<CR><ESC>', opts)
