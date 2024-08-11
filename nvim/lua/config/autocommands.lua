vim.cmd 'autocmd TextYankPost * silent! lua vim.highlight.on_yank { clear = true}'

vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function()
    vim.opt.formatoptions:remove { 'r', 'o', 'c' }
    pcall(vim.cmd '\'"')
  end,
})

vim.api.nvim_create_autocmd({ 'BufEnter', 'BufRead' }, {
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
