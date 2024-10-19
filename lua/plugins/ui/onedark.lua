return {
  {
    'navarasu/onedark.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      -- Set the style before loading the colorscheme
      local onedark = require('onedark').setup

      onedark {
        style = 'darker',
        transparent = true,
        lualine = {
          transparent = true,
        },
      }
      -- Load the colorscheme here
      vim.cmd.colorscheme 'onedark'
      vim.cmd 'highlight CursorLine guibg=#272727'
      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
