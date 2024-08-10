vim.cmd 'autocmd TextYankPost * silent! lua vim.highlight.on_yank { clear = true}'
-- vim.cmd 'autocmd BufEnter * set formatoptions-=cro'

vim.api.nvim_create_autocmd({ 'BufRead', 'BufEnter' }, {
  pattern = { '*.html', '*.css', '*.js', '*.ts', '*.lua' },
  callback = function()
    vim.opt.shiftwidth = 2
  end,
})

vim.api.nvim_create_autocmd({ 'BufLeave' }, {
  pattern = { '*.html', '*.css', '*.js', '*.ts', '*.lua' },
  callback = function()
    vim.opt.shiftwidth = 4
  end,
})

return {}
