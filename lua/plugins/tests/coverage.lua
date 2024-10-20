return {
  {
    'andythigpen/nvim-coverage',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('coverage').setup()

      -- Keymaps
      vim.api.nvim_set_keymap('n', '<leader>Tcr', ':CoverageLoad <CR>', { noremap = true, silent = true, desc = 'Load [R]eport' })
      vim.api.nvim_set_keymap('n', '<leader>Tct', ':CoverageToggle<CR>', { noremap = true, silent = true, desc = '[T]oggle Coverage' })
      vim.api.nvim_set_keymap('n', '<leader>Tcs', ':CoverageSummary<CR>', { noremap = true, silent = true, desc = 'Show [S]ummary' })
    end,
  },
}
