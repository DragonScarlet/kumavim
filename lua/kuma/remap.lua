local keymap = vim.keymap.set
local command = vim.api.nvim_create_user_command

vim.g.mapleader = " "
keymap("n", "<leader>pv", vim.cmd.Ex)

-- Exit
command('Qq', 'q! | q!', {})

-- Autoformat
keymap("v", "<leader>f", ":'<, '> lua vim.lsp.buf.format() <CR>")
keymap("n", "<leader>ff", ":lua vim.lsp.buf.format() <CR>")
