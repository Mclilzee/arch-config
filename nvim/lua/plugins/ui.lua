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
      char = "┊",
      show_trailing_blankline_indent = false,
    },
  },

  {
    "folke/which-key.nvim",
    opts = {
      plugins = { spelling = true },
      defaults = {
        mode = { "n", "v" },
        ["g"] = { name = "+Goto" },
        ["]"] = { name = "+Next" },
        ["["] = { name = "+Prev" },
        ["<leader>c"] = { name = "+Code" },
        ["<leader>g"] = { name = "+Git" },
        ["<leader>s"] = { name = "+Search" },
        ["<leader>u"] = { name = "+UI" },
        ["<leader>l"] = { name = "LSP" },
        ["<leader>w"] = { name = "Window" },
        ["<leader>f"] = { name = "Files" },
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
