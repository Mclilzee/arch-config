return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "google-java-format",
        "jsonlint",
        "lua-language-server",
        "shellcheck",
        "shfmt",
        "stylua",
        "bash-language-server",
        "css-lsp",
        "jsonlint",
        "prettier",
        "js-debug-adapter",
        "eslint-lsp",
        "html-lsp",
        "python-lsp-server",
        -- added through lsconfig manually:
        -- "rust-analyzer",
        -- "typescript-language-server",
        -- "gopls",
      },
    },
  },
}
