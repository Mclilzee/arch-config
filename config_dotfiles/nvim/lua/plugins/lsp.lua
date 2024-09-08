local servers_configs = {
  rust_analyzer = {
    settings = {
      ["rust-analyzer"] = {
        checkOnSave = {
          command = "clippy",
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
  'tsserver',
  'bashls',
  'cssls',
  'html',
  'intelephense',
})

return {
  { 'j-hui/fidget.nvim', opts = {} },
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        "stylua"
      }
    }
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
          end,
        },
      }
    end,
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require 'lspconfig'
      lspconfig.lua_ls.setup {}
      lspconfig.rust_analyzer.setup {}
      vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { desc = 'Rename' })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Action' })
      vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = 'Diagnostic' })
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Goto Declaration' })
    end,

  },
}
