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
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
