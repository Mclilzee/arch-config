return {
  {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
      require('telescope').setup {
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
        },
      }
      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')
      local builtin = require 'telescope.builtin'
      vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Search Help' })
      vim.keymap.set('n', '<leader>sm', builtin.man_pages, { desc = 'Search Man pages' })
      vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = 'Search Keymaps' })
      vim.keymap.set('n', '<leader>sb', builtin.builtin, { desc = 'Search Builtin' })
      vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = 'Search current Word' })
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Search by Grep' })
      vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = 'Search Diagnostics' })
      vim.keymap.set('n', '<leader>sR', builtin.resume, { desc = 'Search Resume' })
      vim.keymap.set('n', '<leader>sr', builtin.oldfiles, { desc = 'Search Recent Files' })
      vim.keymap.set('n', '<leader>sh', function()
        builtin.find_files { cwd = '~' }
      end, { desc = 'Search Home' })
      vim.keymap.set('n', '<leader>sc', builtin.command_history, { desc = 'Search Commands History' })
      vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = 'Find existing buffers' })
      vim.keymap.set('n', '<leader>.', function()
        local history = vim.cmd 'history'
        vim.notify(history, vim.log.levels.INFO)
        print(history)
        for i = #history, 1, -1 do
          local cmd = history[i]
          if cmd:sub(1, 1) == '!' then
            vim.cmd(cmd)
            return
          end
        end
        vim.notify('No previous terminal command found.', vim.log.levels.INFO)
      end, { desc = 'Reuse last used command' })
      vim.keymap.set('n', '<leader>sf', function()
        if not pcall(builtin.git_files) then
          builtin.find_files()
        end
      end, { desc = '[S]earch [F]iles' })

      vim.keymap.set('n', '<leader>/', function()
        builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end, { desc = '[/] Fuzzily search in current buffer' })
      vim.keymap.set('n', '<leader>s/', function()
        builtin.live_grep {
          grep_open_files = true,
          prompt_title = 'Live Grep in Open Files',
        }
      end, { desc = '[S]earch [/] in Open Files' })
      vim.keymap.set('n', '<leader>sn', function()
        builtin.find_files { cwd = vim.fn.stdpath 'config' }
      end, { desc = '[S]earch [N]eovim files' })
    end,
  },
}
