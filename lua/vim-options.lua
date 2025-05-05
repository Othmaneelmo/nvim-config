vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Exit terminal mode with Esc
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

-- Move around from terminal using Ctrl + h/j/k/l
vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]])
vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]])
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]])
vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]])

-- Open terminal in horizontal split with Ctrl-t
vim.keymap.set('n', '<C-t>', ':split | terminal<CR>', { noremap = true, silent = true })

-- Open terminal in vertical split with Ctrl-v, then t (C-vt)
vim.keymap.set('n', '<C-v>t', ':vsplit | terminal<CR>', { noremap = true, silent = true })

