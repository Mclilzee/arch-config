vim.opt.wildmode = 'full:lastused'
vim.opt.shiftwidth = 4
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.showmode = false
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
vim.opt.breakindent = true
vim.opt.guicursor = 'i:block'
vim.opt.scrolloff = 8
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Hide signs on the left bar
vim.opt.signcolumn = 'no'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.wildmode = 'longest:full,full'
return {}
