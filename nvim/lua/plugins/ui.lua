return {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
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
}
