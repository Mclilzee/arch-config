vim.g.mapleader = ','
vim.g.maplocalleader = ','
vim.g.have_nerd_font = true
vim.keymap.set('n', '!', ':!')
vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', 's', '<nop>')

vim.keymap.set('n', '<leader>e', '<cmd>Ex<CR>', { desc = 'Open files tree' })
vim.keymap.set('n', '<leader>o', '<C-w>o', { desc = 'Only current window' })
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = 'Paste While Holding Clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete While Holding Clipboard' })
-- Move selected up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move Selected Up' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move Selected Down' })
-- Go to other buffer
vim.keymap.set('n', '<leader><space>', '<cmd>e #<CR>', { desc = 'Latest Buffers toggle' })
-- Tabs
vim.keymap.set('n', '<tab>l', '<cmd>tabnext<CR>', { desc = 'Next tab' })
vim.keymap.set('n', '<tab>h', '<cmd>tabprevious<CR>', { desc = 'Previous tab' })
vim.keymap.set('n', '<tab>n', '<cmd>tab split<CR>', { desc = 'Tab split' })
vim.keymap.set('n', '<tab>o', '<cmd>tabonly<CR>', { desc = 'Close all other tabs' })
-- LSP
vim.keymap.set('n', '<leader>lr', '<cmd>LspRestart<CR>', { desc = 'Restart' })
vim.keymap.set('n', '<leader>li', '<cmd>LspInfo<CR>', { desc = 'Info' })
vim.keymap.set('n', '<leader>ls', '<cmd>LspStart<CR>', { desc = 'Start' })
vim.keymap.set('n', '<leader>ll', '<cmd>LspLog<CR>', { desc = 'Log' })
vim.keymap.set('n', '<leader>lS', '<cmd>LspStop<CR>', { desc = 'Stop' })
vim.keymap.set('n', '<leader>lI', '<cmd>LspInstall<CR>', { desc = 'Install' })
vim.keymap.set('n', '<leader>lu', '<cmd>LspUninstall<CR>', { desc = 'Uninstall' })
-- Terminal
vim.keymap.set('n', '<leader>t', '<cmd>term<CR>i', { desc = 'Terminal (cwd)' })
-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- Exit terminal mode in the builtin terminal with a shortcut
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Resize windows
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Files
vim.keymap.set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

return {}
