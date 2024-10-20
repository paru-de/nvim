-- Small plugins which don't require config go here
return {

  -- Display a character as the colorcolumn.
  {
    'lukas-reineke/virt-column.nvim',
    config = function()
      require('virt-column').setup() -- Set up the plugin here after loading
    end,
  },

  -- Detect tabstop and shiftwidth automatically
  {
    'tpope/vim-sleuth',
  },

  -- Highlight colors
  {
    'brenoprata10/nvim-highlight-colors',
    config = function()
      require('nvim-highlight-colors').setup {}
    end,
  },

  -- Smooth scrolling
  {
    'declancm/cinnamon.nvim',
    config = function()
      require('cinnamon').setup()
    end,
  },

  -- Fast movement
  {
    'ggandor/leap.nvim',
    config = function()
      require('leap').setup {}
      vim.keymap.set('n', 'l', '<Plug>(leap)')
      vim.keymap.set('n', 'L', '<Plug>(leap-from-window)')
      vim.keymap.set({ 'x', 'o' }, 'l', '<Plug>(leap-forward)')
      vim.keymap.set({ 'x', 'o' }, 'L', '<Plug>(leap-backward)')
    end,
  },
}
