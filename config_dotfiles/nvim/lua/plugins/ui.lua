return {
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_enable_italic = false
      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_foreground = 'material'
      vim.g.gruvbox_material_transparent_background = 1
      vim.cmd.colorscheme 'gruvbox-material'
    end,
  },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
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
