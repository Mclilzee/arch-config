vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Yank Highlight',
  group = vim.api.nvim_create_augroup('highlight_yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
return {}
