-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.cmd("autocmd BufEnter * set formatoptions-=cro")

local client = vim.lsp.start_client({
  name = "toplsp",
  cmd = { "node", "/home/mclilzee/repo/toplsp/server/out/main.js" },
})

if not client then
  return
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.lsp.buf_attach_client(0, client)
  end,
})
