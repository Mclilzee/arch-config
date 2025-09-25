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

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function(ev)
    vim.lsp.start {
      name = 'toplsp',
      cmd = { 'node', '/home/mclil/repo/toplsp/server/out/main.js' },
      root_dir = vim.fs.root(ev.buf, { '.markdownlint-cli2.jsonc'}),
    }
  end,
})

return {}
