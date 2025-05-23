local servers_configs = {
  rust_analyzer = {
    settings = {
      ['rust-analyzer'] = {
        checkOnSave = {
          command = 'clippy',
        },
      },
    },
  },
}

local ensure_installed = vim.tbl_keys(servers_configs or {})
vim.list_extend(ensure_installed, {
  'bashls',
  'clangd',
  'cssls',
  'html',
  'intelephense',
  'jsonls',
  'lua_ls',
  'rust_analyzer',
  'ts_ls',
})

return {
  { 'neovim/nvim-lspconfig' },
  { 'j-hui/fidget.nvim', opts = {} },
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'stylua',
      },
    },
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup {
        ensure_installed = ensure_installed,
        handlers = {
          function(server_name)
            local server = servers_configs[server_name] or {}
            server.on_attach = function()
              vim.keymap.set({ 'n', 'v' }, '<leader>cr', vim.lsp.buf.rename, { desc = 'Rename' })
              vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = 'Action' })
              vim.keymap.set({ 'n', 'v' }, '<leader>cd', vim.diagnostic.open_float, { desc = 'Diagnostic' })
              vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Goto Declaration' })
            end
            server.single_file_support = false
            require('lspconfig')[server_name].setup(server)
          end,
        },
      }
    end,
  },
}
