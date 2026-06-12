vim.pack.add { 'https://github.com/mfussenegger/nvim-lint' }

local lint = require 'lint'
lint.linters_by_ft = {
  markdown = { 'markdownlint' },
  typescript = { 'eslint_d' },
  typescriptreact = { 'eslint_d' },
  javascript = { 'eslint_d' },
  javascriptreact = { 'eslint_d' },
  json = { 'jsonlint' },
  shellcheck = { 'bash' },
}

local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
vim.api.nvim_create_autocmd({ 'BufReadPre', 'BufNewFile', 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
  group = lint_augroup,
  callback = function()
    lint.try_lint()
  end,
})
