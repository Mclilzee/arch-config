return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        encusre_installed = {
                "clangd",
                "lua_ls",
                "rust_analyzer",
                "tsserver",
                'bash-language-server',
                'css-lsp',
                'flake8',
                'google-java-format',
                'html-lsp',
                'intelephense',
                'js-debug-adapter',
                'jsonlint',
                'lua-language-server',
                'prettier',
                'shellcheck',
                'shfmt',
                'stylua',
        }
      })
    end
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { desc = '[R]e[n]ame' })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = '[C]ode [A]ction' })
      vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = '[C]ode [D]iagnostic' })
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = '[G]oto [D]eclaration' })
      -- vim.api.nvim_create_autocmd('LspAttach', {
        -- group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
        -- callback = function(event)
    --
    --       -- When you move your cursor, the highlights will be cleared (the second autocommand).
    --       local client = vim.lsp.get_client_by_id(event.data.client_id)
    --       if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
    --         local highlight_augroup = vim.api.nvim_create_augroup('lsp-highlight', { clear = false })
    --         vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
    --           buffer = event.buf,
    --           group = highlight_augroup,
    --           callback = vim.lsp.buf.document_highlight,
    --         })
    --
    --         vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
    --           buffer = event.buf,
    --           group = highlight_augroup,
    --           callback = vim.lsp.buf.clear_references,
    --         })
    --
    --         vim.api.nvim_create_autocmd('LspDetach', {
    --           group = vim.api.nvim_create_augroup('lsp-detach', { clear = true }),
    --           callback = function(event2)
    --             vim.lsp.buf.clear_references()
    --             vim.api.nvim_clear_autocmds { group = 'lsp-highlight', buffer = event2.buf }
    --           end,
    --         })
    --       end
    --     end,
    --   })
    --   local capabilities = vim.lsp.protocol.make_client_capabilities()
    --   capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())
    end
  }
}
