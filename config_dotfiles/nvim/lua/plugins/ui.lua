return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'tokyonight-night'
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
