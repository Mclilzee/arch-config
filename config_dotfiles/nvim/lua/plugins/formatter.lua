vim.pack.add { 'https://github.com/stevearc/conform.nvim' }
require('conform').setup {
  -- notify_on_error = false,
  format_on_save = false,
  formatters_by_ft = {
    c = { 'clang-format' },
    cpp = { 'clang-format' },
    lua = { 'stylua' },
    python = { 'isort', 'black' },
    rust = { 'rustfmt', lsp_format = 'fallback' },
    json = { 'prettierd', 'prettier', stop_after_first = true },
    javascript = { 'prettierd', 'prettier', stop_after_first = true },
    css = { 'prettierd' },
  },
}

vim.pack.add { 'https://github.com/NMAC427/guess-indent.nvim' }
require('guess-indent').setup {}
