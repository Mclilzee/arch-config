return {
  {
    'echasnovski/mini.ai',
    version = false,
    config = function()
      require('mini.ai').setup()
    end,
  },
  {
    'echasnovski/mini.surround',
    version = false,
    config = function()
      require('mini.surround').setup()
    end,
  },
  -- {
  --   'echasnovski/mini.statusline',
  --   version = false,
  --   config = function()
  --     local statusline = require 'mini.statusline'
  --     statusline.setup { use_icons = vim.g.have_nerd_font }
  --     ---@diagnostic disable-next-line: duplicate-set-field
  --     statusline.section_location = function()
  --       return '%2l:%-2v'
  --     end
  --   end,
  -- },
}
