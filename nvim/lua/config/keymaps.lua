-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Custom Keymaps

-- Deleted Keys
vim.keymap.del("n", "<A-j>")
vim.keymap.del("n", "<A-k>")
vim.keymap.del("i", "<A-j>")
vim.keymap.del("i", "<A-k>")
vim.keymap.del("v", "<A-j>")
vim.keymap.del("v", "<A-k>")
vim.keymap.del("n", "<leader>gg")
vim.keymap.del("n", "<leader>`")
vim.keymap.del("n", "<leader>gG")
vim.keymap.del("n", "<leader>bb")
vim.keymap.del("n", "<leader>l")
vim.keymap.del("n", "<leader>qq")
vim.keymap.del("n", "<leader>L")
vim.keymap.del("n", "<leader><tab>l")
vim.keymap.del("n", "<leader><tab>f")
vim.keymap.del("n", "<leader><tab><tab>")
vim.keymap.del("n", "<leader><tab>]")
vim.keymap.del("n", "<leader><tab>d")
vim.keymap.del("n", "<leader><tab>[")
vim.keymap.del("n", "<leader>ft")
vim.keymap.del("n", "<leader>fT")

local Util = require("lazyvim.util")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste While Holding Clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete While Holding Clipboard" })

-- Move selected up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Selected Up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Selected Down" })

-- Center Screen after moving up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Center Screen after searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Go to other buffer
vim.keymap.set("n", "<leader>,", "<cmd>e #<CR>", { desc = "Previous Buffer" })

-- LSP
vim.keymap.set("n", "<leader>lr", "<cmd>LspRestart<CR>", { desc = "Restart" })
vim.keymap.set("n", "<leader>li", "<cmd>LspInfo<CR>", { desc = "Info" })
vim.keymap.set("n", "<leader>ls", "<cmd>LspStart<CR>", { desc = "Start" })
vim.keymap.set("n", "<leader>ll", "<cmd>LspLog<CR>", { desc = "Log" })
vim.keymap.set("n", "<leader>lS", "<cmd>LspStop<CR>", { desc = "Stop" })
vim.keymap.set("n", "<leader>lI", "<cmd>LspInstall<CR>", { desc = "Install" })
vim.keymap.set("n", "<leader>lu", "<cmd>LspUninstall<CR>", { desc = "Uninstall" })

-- Terminal
local lazyterm = function()
  Util.terminal(nil, {
    size = { width = 1, height = 1 },
    border = "double",
    margin = { top = 1, bottom = 2, left = 1, right = 1 },
    title = "NVIM Term",
    title_pos = "center",
  })
end

local rootTerm = function()
  Util.terminal(nil, { cwd = Util.root() })
end

vim.keymap.set("n", "<leader>t", lazyterm, { desc = "Terminal (cwd)" })
vim.keymap.set("n", "<leader>T", rootTerm, { desc = "Terminal (root dir)" })
