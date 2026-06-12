-- Overwrite defaults
vim.g.mapleader = ','
vim.g.maplocalleader = ','
vim.keymap.set('n', '<space>', ',', { desc = 'Move Search forward' })
vim.keymap.set('x', '<space>', ',', { desc = 'Move Search forward' })

vim.keymap.set('n', '!', ':!')
vim.keymap.set('n', 'Q', '<nop>')
-- Files and windows
vim.keymap.set('n', '<leader>e', '<cmd>Ex<CR>', { desc = 'Open files tree' })
vim.keymap.set('n', '<leader>wo', '<C-w>o', { desc = 'Only current window' })
vim.keymap.set('n', '<leader>wl', '<C-w>v', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>wj', '<C-w>s', { desc = 'Split window horisontally' })
-- Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
-- Resize windows
vim.keymap.set('n', '<C-Up>', '<cmd>resize +2<cr>', { desc = 'Increase Window Height' })
vim.keymap.set('n', '<C-Down>', '<cmd>resize -2<cr>', { desc = 'Decrease Window Height' })
vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Decrease Window Width' })
vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Increase Window Width' })
-- Clipboard
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = 'Paste While Holding Clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete While Holding Clipboard' })
-- Move selected up and dowe
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move Selected Up' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move Selected Down' })
-- Go to other buffer
vim.keymap.set('n', '<leader><space>', '<cmd>e #<CR>', { desc = 'Latest Buffers toggle' })
-- Tabs
vim.keymap.set('n', '<leader><Tab>l', '<cmd>tabnext<CR>', { desc = 'Next tab' })
vim.keymap.set('n', '<leader><Tab>h', '<cmd>tabprevious<CR>', { desc = 'Previous tab' })
vim.keymap.set('n', '<leader><Tab>n', '<cmd>tab split<CR>', { desc = 'Tab split' })
vim.keymap.set('n', '<leader><Tab>o', '<cmd>tabonly<CR>', { desc = 'Close all other tabs' })
-- LSP
vim.keymap.set('n', '<leader>lr', ':lsp restart<CR>', { desc = 'Restart' })
vim.keymap.set('n', '<leader>le', ':lsp enable<CR>', { desc = 'Enable' })
vim.keymap.set('n', '<leader>ll', ':e ~/.local/state/nvim/lsp.log<CR>', { desc = 'Log' })
vim.keymap.set('n', '<leader>ld', ':lsp disable<CR>', { desc = 'Disable' })
vim.keymap.set('n', '<leader>ls', ':lsp stop<CR>', { desc = 'Stop' })
-- Formatting
vim.keymap.set({ 'n', 'v' }, '<leader>f', function()
  require('conform').format { async = true, lsp_fallback = true }
end, { desc = 'Format buffer' })

vim.keymap.set({ 'n', 'v' }, '<leader>cr', vim.lsp.buf.rename, { desc = 'Rename' })
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = 'Action' })
vim.keymap.set({ 'n', 'v' }, '<leader>cd', vim.diagnostic.open_float, { desc = 'Diagnostic' })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Goto Declaration' })
-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic Quickfix list' })
-- Exit terminal mode in the builtin terminal with a shortcut
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
-- Extra
vim.keymap.set('n', '<leader>m', '<cmd>messages<cr>', { desc = 'Show messages' })
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Terminal
vim.keymap.set('n', '<leader>t', function()
  vim.fn.system 'tmux split-window -v'
end, { desc = 'Open terminal in tmux split' })
vim.keymap.set('n', '<leader>T', function()
  vim.fn.system 'tmux split-window -h'
end, { desc = 'Open terminal in tmux split' })
vim.keymap.set('n', '<leader>.', '<cmd>!!<CR>', { desc = 'Repeat last shell command' })

----------------- Tree sitter -------------------
local builtin = require 'telescope.builtin'
-- Git
vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = 'Commits' })
vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Status' })
vim.keymap.set('n', '<leader>gB', builtin.git_bcommits, { desc = 'Branches Commits' })
vim.keymap.set('n', '<leader>gb', builtin.git_branches, { desc = 'Branches' })
vim.keymap.set('n', '<leader>gS', builtin.git_stash, { desc = 'Stash' })
-- Keymaps
vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = 'Goto Definition' })
vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = 'Goto References' })
vim.keymap.set('n', 'gi', builtin.lsp_implementations, { desc = 'Goto Implementation' })
vim.keymap.set('n', 'gt', builtin.lsp_type_definitions, { desc = 'Type Definition' })
vim.keymap.set('n', '<leader>ss', builtin.lsp_document_symbols, { desc = 'Search Symbols' })
vim.keymap.set('n', '<leader>sS', builtin.lsp_dynamic_workspace_symbols, { desc = 'Search Workspace Symbols' })
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Search Files' })
vim.keymap.set('n', '<leader>sH', builtin.help_tags, { desc = 'Search Help' })
vim.keymap.set('n', '<leader>sm', builtin.man_pages, { desc = 'Search Man pages' })
vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = 'Search Keymaps' })
vim.keymap.set('n', '<leader>sb', builtin.builtin, { desc = 'Search Builtin' })
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = 'Search current Word' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Search by Grep' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = 'Search Diagnostics' })
vim.keymap.set('n', '<leader>sR', builtin.resume, { desc = 'Search Resume' })
vim.keymap.set('n', '<leader>sr', builtin.oldfiles, { desc = 'Search Recent Files' })
vim.keymap.set('n', '<leader>sc', builtin.command_history, { desc = 'Search Commands History' })
vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = 'Find existing buffers' })
vim.keymap.set('n', '<leader>sh', function()
  builtin.find_files { cwd = '~' }
end, { desc = 'Search Home' })
vim.keymap.set('n', '<leader>/', function()
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })
vim.keymap.set('n', '<leader>s/', function()
  builtin.live_grep {
    grep_open_files = true,
    prompt_title = 'Live Grep in Open Files',
  }
end, { desc = '[S]earch [/] in Open Files' })
vim.keymap.set('n', '<leader>sn', function()
  builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim files' })
---------------------------------------------------------------------------
