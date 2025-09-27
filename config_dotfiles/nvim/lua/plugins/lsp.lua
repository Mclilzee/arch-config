local servers_configs = {
  rust_analyzer = {
    settings = {
      ['rust-analyzer'] = {
        checkOnSave = {
          -- command = 'clippy',
        },
      },
    },
  },
}

vim.list_extend(servers_configs, {
  'bashls',
  'clangd',
  'cssls',
  'html',
  'intelephense',
  'jsonls',
  'lua_ls',
  'rust_analyzer',
  'ts_ls',
  'stylua',
  'markdownlint',
})

return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'mason-org/mason.nvim', opts = {} },
    'mason-org/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    { 'j-hui/fidget.nvim', opts = {} },
  },
  config = function()
    require('mason-tool-installer').setup { ensure_installed = servers_configs }
    require('mason-lspconfig').setup {
      ensure_installed = {},
      automatic_installation = false,
      handlers = {
        function(server_name)
          local server = servers_configs[server_name] or {}
          require('lspconfig')[server_name].setup(server)
        end,
      },
    }
    vim.diagnostic.config {
      virtual_text = false,
      underline = false,
      signs = false,
      float = false,
    }
  end,
}
