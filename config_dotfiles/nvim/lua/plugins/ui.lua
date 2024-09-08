return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        undercurl = true,
        transparent = true,
        compile = true,
        colors = {
          theme = { all = { ui = { bg_gutter = 'none' } } },
        },
      }
      vim.cmd.colorscheme 'kanagawa'
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
