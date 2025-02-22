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
  'clangd',
  'lua_ls',
  'rust_analyzer',
  'ts_ls',
  'bashls',
  'cssls',
  'html',
  'intelephense',
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
            require('lspconfig')[server_name].setup(server)

            vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { desc = 'Rename' })
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Action' })
            vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = 'Diagnostic' })
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Goto Declaration' })
          end,

          rust_analyzer = function()
            require('lspconfig').rust_analyzer.setup {
              single_file_support = false,
            }
          end,
          lua_ls = function()
            require('lspconfig').lua_ls.setup {
              single_file_support = false,
            }
          end,
        },
      }
    end,
  },
}
