return {
  'm4xshen/hardtime.nvim',
  dependencies = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
  opts = {
    notification = true,
    disable_mouse = false,
    max_count = 4,
    enabled = true, -- set to false and use kb toggle in future
  },
  vim.api.nvim_set_keymap('n', '<leader>Mh', ':Hardtime toggle<CR>', { noremap = true, silent = true, desc = 'Toggle [H]ardtime' }),
}
