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

    function _lazygit_toggle()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap('n', '<leader>tt', '<cmd>ToggleTerm<CR>', { noremap = true, silent = true, desc = 'Toggle [T]erminal' })
    vim.api.nvim_set_keymap('n', '<leader>tg', '<cmd>lua _lazygit_toggle()<CR>', { noremap = true, silent = true, desc = 'Toggle [G]it (LazyGit)' })
  end,
}
