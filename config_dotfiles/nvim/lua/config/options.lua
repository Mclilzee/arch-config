vim.loader.enable()
vim.o.showmode = false
vim.o.path = '.,,**'
vim.o.relativenumber = true
vim.o.wildmode = 'full:lastused'
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.number = true
vim.o.mouse = 'a'
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)
vim.o.breakindent = true
vim.o.guicursor = 'i:block'
vim.o.scrolloff = 10
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.list = true
vim.o.winborder = 'rounded'
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.diagnostic.config {
  -- virtual_text = false,
  -- underline = false,
  -- undercurl = false,
  -- signs = false,
  -- float = false,
}

--- Netrw
vim.g.netrw_liststyle = 1
