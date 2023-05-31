vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Exit
-- vim.keymap.set("n", "<leader>q", ':q!<CR>')
vim.api.nvim_create_user_command('Qq', 'q! | q!', {})

-- Autoformat
vim.keymap.set("v", "<leader>f", ":'<, '> lua vim.lsp.buf.format() <CR>")
vim.keymap.set("n", "<leader>ff", ":lua vim.lsp.buf.format() <CR>")
