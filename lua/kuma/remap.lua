local keymap = vim.keymap.set
local command = vim.api.nvim_create_user_command

vim.g.mapleader = " "
keymap("n", "<leader>pv", vim.cmd.Ex)

-- Exit
command('Qq', 'q! | q! | q!', {})

-- Autoformat
keymap("v", "<leader>f", ":'<, '> lua vim.lsp.buf.format() <CR>")
keymap("n", "<leader>ff", ":lua vim.lsp.buf.format() <CR>")

-- nvim-dap
keymap("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
keymap("n", "<leader>bc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>")
keymap("n", "<leader>bl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>")
keymap("n", "<leader>br", "<cmd>lua require'dap'.clear_breakpoints()<cr>")
keymap("n", "<leader>ba", '<cmd>Telescope dap list_breakpoints<cr>')
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>")
keymap("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>")
keymap("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>")
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>")
keymap("n", "<leader>dd", "<cmd>lua require'dap'.disconnect()<cr>")
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>")
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>")
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>")
-- keymap("n", "<leader>di", function() require "dap.ui.widgets".hover() end, "Variables")
--keymap("n", "<leader>d?", function()
--    local widgets = require "dap.ui.widgets"; widgets.centered_float(widgets.scopes)
--end, "Scopes")
keymap("n", "<leader>df", '<cmd>Telescope dap frames<cr>')
keymap("n", "<leader>dh", '<cmd>Telescope dap commands<cr>')
