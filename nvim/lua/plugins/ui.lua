return {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  {
    'ellisonleao/gruvbox.nvim',
    opts = {
      transparent_mode = true,
      italic = {
        strings = false,
        comments = false,
        operators = false,
        folds = false,
      },
    },

    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'gruvbox'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {
      indent = {
        tab_char = '┊',
        char = '┊',
      },
    },
  },
  {
    'echasnovski/mini.nvim',
    config = function()
      require('mini.ai').setup { n_lines = 500 }
      require('mini.surround').setup()
      local statusline = require 'mini.statusline'
      statusline.setup { use_icons = vim.g.have_nerd_font }
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end
    end,
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
}
