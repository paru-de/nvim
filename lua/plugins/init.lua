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
}
