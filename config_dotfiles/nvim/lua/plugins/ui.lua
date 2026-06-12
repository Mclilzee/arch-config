-- vim.pack.add { 'https://github.com/nvim-tree/nvim-web-devicons' }
-- require('nvim-web-devicons').setup {
--   enabled = vim.g.have_nerd_font,
-- }


vim.pack.add { 'https://github.com/folke/which-key.nvim' }
require('which-key').setup {
  plugins = { spelling = true },
  icons = { mappings = vim.g.have_nerd_font },
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
}

vim.pack.add { 'https://github.com/lukas-reineke/indent-blankline.nvim' }
require('ibl').setup {
  indent = {
    tab_char = '┊',
    char = '┊',
  },
  scope = {
    enabled = false,
  },
}

vim.pack.add { 'https://github.com/ellisonleao/gruvbox.nvim' }
require('gruvbox').setup {
  transparent_mode = true,
  italic = {
    strings = false,
    comments = false,
    operators = false,
    folds = false,
  },
}

vim.pack.add { 'https://github.com/folke/tokyonight.nvim' }
require('tokyonight').setup {
  transparent = true,
  style = 'dark',
  styles = {
    comments = { italic = false },
    keywords = { italic = false },
  },
}

vim.cmd.colorscheme 'tokyonight-night'
