-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- local opts = {}
require("vim-options")
require("lazy").setup("plugins")

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

