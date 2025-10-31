return {
  {
    'ellisonleao/gruvbox.nvim',
    config = function()
      require('gruvbox').setup {
        transparent_mode = true,
        italic = {
          strings = false,
          comments = false,
          operators = false,
          folds = false,
        },
      }
      -- vim.cmd.colorscheme 'gruvbox'
    end,
  },
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
      require('tokyonight').setup {
        transparent = true,
        style = 'dark',
        styles = {
          comments = { italic = false },
          keywords = { italic = false },
        },
      }
      vim.cmd.colorscheme 'tokyonight-night'
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
      scope = {
        enabled = false,
      },
    },
  },
  {
    'folke/which-key.nvim',
    opts = {
      plugins = { spelling = true },
      spec = {
        mode = { 'n', 'v' },
        { '<leader>c', group = 'Code' },
        { '<leader>g', group = 'Git' },
        { '<leader>l', group = 'LSP' },
        { '<leader>s', group = 'Search' },
        { '<leader>w', group = 'Window' },
        { '<leader><Tab>', group = 'Tabs' },
        { '<leader>x', group = 'Diagnostics/Quickfix' },
        { '[', group = 'Prev' },
        { ']', group = 'Next' },
        { 'g', group = 'Goto' },
      },
    },
  },
}
