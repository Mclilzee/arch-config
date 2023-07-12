return {
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "simrat39/rust-tools.nvim",
      "jose-elias-alvarez/typescript.nvim",
    },

    opts = {
      servers = {
        rust_analyzer = {},

        tsserver = {
          keys = {
            { "<leader>co", "<cmd>TypescriptOrganizeImports<CR>", desc = "Organize Imports" },
            { "<leader>cR", "<cmd>TypescriptRenameFile<CR>", desc = "Rename File" },
          },
        },

        setup = {
          rust_analyzer = function(_, opts)
            require("rust-tools").setup({ server = opts })
            return true
          end,
        },
      },
    },
  },
}
