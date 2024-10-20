return {
  'akinsho/toggleterm.nvim',
  config = function()
    require('toggleterm').setup()

    -- Define keymaps here, ensuring toggleterm is loaded
    local Terminal = require('toggleterm.terminal').Terminal

    local lazygit = Terminal:new {
      cmd = 'lazygit',
      hidden = true,
      float_opts = {
        border = 'single',
        width = 120,
        height = 100,
        highlights = {
          border = 'Normal',
          background = 'Normal',
        },
      },
      direction = 'float',
    }

    function LazyGit_toggle()
      lazygit:toggle()
    end

    local golangTest = Terminal:new {
      cmd = 'go test; read -n 1 -s -r -p "Press any key to continue..."',
      hidden = true,
      float_opts = {
        border = 'single',
        width = 120,
        height = 100,
        highlights = {
          border = 'Normal',
          background = 'Normal',
        },
      },
      direction = 'float',
    }

    function GoTest_toggle()
      golangTest:toggle()
    end

    local floatingterminal = Terminal:new {
      hidden = true,
      float_opts = {
        border = 'single', -- or 'double' or 'shadow' or 'none'
        width = 120,
        height = 50,
        highlights = {
          border = 'Normal',
          background = 'Normal',
        },
      },
      direction = 'float',
    }

    function FloatingTerminal_toggle()
      floatingterminal:toggle()
    end

    vim.api.nvim_set_keymap('n', '<leader>tt', '<cmd>ToggleTerm<CR>', { noremap = true, silent = true, desc = 'Toggle [T]erminal' })
    vim.api.nvim_set_keymap('n', '<leader>tf', '<cmd>lua FloatingTerminal_toggle()<CR>', { noremap = true, silent = true, desc = 'Toggle [F]loating Terminal' })
    vim.api.nvim_set_keymap('n', '<leader>tg', '<cmd>lua LazyGit_toggle()<CR>', { noremap = true, silent = true, desc = 'Toggle [G]it (LazyGit)' })
    vim.api.nvim_set_keymap('n', '<leader>Tt', '<cmd>lua GoTest_toggle()<CR>', { noremap = true, silent = true, desc = 'Go: Run [T]ests' })
  end,
}
