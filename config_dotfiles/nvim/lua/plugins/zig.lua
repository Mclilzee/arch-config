local vim = vim

vim.pack.add {
  'https://codeberg.org/ziglang/zig.vim',
}

vim.g.zig_fmt_parse_errors = 0
vim.g.zig_fmt_autosave = 0
vim.lsp.config['zls'] = {
  cmd = { '/path/to/zls_executable' },
  filetypes = { 'zig' },
  root_markers = { 'build.zig' },
  settings = {
    zls = {
      enable_build_on_save = true,
    },
  },
}

vim.lsp.enable 'zls'
