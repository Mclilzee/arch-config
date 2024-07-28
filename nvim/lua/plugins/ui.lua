return {
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      transparent_mode = true,
      italic = {
        strings = false,
        comments = false,
        operators = false,
        folds = false,
      },
      palette_overrides = {
        -- bright_blue = "#fffbac", -- variable names
        -- bright_red = "#cc241d", -- keywords
      },
    },
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      indent = {
        tab_char = "┊",
        char = "┊",
      },
    },
  },

  {
    "folke/which-key.nvim",
    opts = {
      plugins = { spelling = true },
      spec = {
        mode = { "n", "v" },
        { "<leader>c", group = "Code" },
        { "<leader>f", group = "Files" },
        { "<leader>g", group = "Git" },
        { "<leader>l", group = "LSP" },
        { "<leader>s", group = "Search" },
        { "<leader>u", group = "UI" },
        { "<leader>w", group = "Window" },
        { "<leader>x", group = "Diagnostics/Quickfix" },
        { "[", group = "Prev" },
        { "]", group = "Next" },
        { "g", group = "Goto" },
      },
    },
  },

  { "j-hui/fidget.nvim", tag = "legacy", opts = {} },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
