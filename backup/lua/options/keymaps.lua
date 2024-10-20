-- [[ Basic Keymaps ]l]
--
-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Map Ctrl+S to save
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })

-- [[ Exit insert mode with jj ]]
-- Set timeout length
vim.api.nvim_set_option('timeoutlen', 350)
-- Create key mapping for 'jj' to escape in insert mode
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })
-- Create key mappig for 'kk' to escape in insert mode, and back to insert at
-- end of line, to the left/right of cursor
vim.api.nvim_set_keymap('i', 'kk', '<Esc>$i', { noremap = true, silent = true })
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>cm', vim.diagnostic.open_float, { desc = 'Open floating diagnostic [m]essage' })
--vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
vim.api.nvim_set_keymap('n', '<leader>cl', ':Telescope diagnostics<CR>', { noremap = true, silent = true, desc = 'Open diagnostics [l]ist' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- [[ NeoTree ]]
-- Add this block to your init.lua file
vim.api.nvim_set_keymap('n', '<leader>e', ':Neotree toggle<CR>', { noremap = true, silent = true, desc = 'File [E]xplorer' })

-- [[ Lazy Updates ]]
vim.api.nvim_set_keymap('n', '<leader>l', ':Lazy check<CR>', { noremap = true, silent = true, desc = '[L]azy Check for Updates' })

-- [[ ToggleTerm ]]

-- LazyGit floating terminal
local Terminal = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new {
  cmd = 'lazygit',
  hidden = true,
  float_opts = {
    border = 'single', -- or 'double' or 'shadow' or 'none'
    width = 120,
    height = 100,
    highlights = {
      border = 'Normal',
      background = 'Normal',
    },
  },
  direction = 'float', -- Set direction to 'float'
}

function _lazygit_toggle()
  lazygit:toggle()
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

function _floatingterminal_toggle()
  floatingterminal:toggle()
end

vim.api.nvim_set_keymap('n', '<leader>gg', '<cmd>lua _lazygit_toggle()<CR>', { noremap = true, silent = true, desc = 'Lazy[G]it' })
vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>lua _floatingterminal_toggle()<CR>', { noremap = true, silent = true, desc = 'Toggle [T]erminal' })

-- [[ UndoTree ]]
vim.keymap.set('n', '<leader>u', require('undotree').toggle, { desc = 'Toggle [U]ndoTree', noremap = true, silent = true })

-- [[ LiveServer ]]
vim.api.nvim_set_keymap('n', '<leader>pl', ':LiveServerStart<CR>', { noremap = true, silent = true, desc = '[L]ive Server: Start' })
vim.api.nvim_set_keymap('n', '<leader>ps', ':LiveServerStop<CR>', { noremap = true, silent = true, desc = 'Live Server: [S]top' })

-- [[ Color Highligther ]]
vim.api.nvim_set_keymap(
  'n',
  '<leader>pc',
  ':lua require("nvim-highlight-colors").toggle()<CR>',
  { noremap = true, silent = true, desc = 'Toggle [c]olor preview' }
)

vim.api.nvim_set_keymap('n', '<leader>cn', ':Navbuddy<CR>', { noremap = true, silent = true, desc = '[N]avigate symbols' })
-- [[ WhichKey ]]
--
require('which-key').add {
  { '<leader>M', group = '[M]isc' },
  { '<leader>M_', hidden = true },
  { '<leader>c', group = '[C]ode' },
  { '<leader>c_', hidden = true },
  { '<leader>d', group = '[D]ocument' },
  { '<leader>d_', hidden = true },
  { '<leader>f', group = '[F]ind' },
  { '<leader>f_', hidden = true },
  { '<leader>g', group = '[G]it' },
  { '<leader>g_', hidden = true },
  { '<leader>h', group = '[H]unk' },
  { '<leader>h_', hidden = true },
  { '<leader>p', group = '[P]review' },
  { '<leader>p_', hidden = true },
  { '<leader>w', group = '[W]orkspace' },
  { '<leader>w_', hidden = true },
}
-- register which-key VISUAL mode
-- required for visual <leader>hs (hunk stage) to work
require('which-key').add {
  { '', group = 'VISUAL <leader>', mode = 'v' },
  { '', desc = '<leader>h', mode = 'v' },
}
vim.api.nvim_set_keymap('n', '<leader>C', ':CheatSH<CR>', { noremap = true, silent = true, desc = 'Open [C]heat Sheet' })
-- vim: ts=2 sts=2 sw=2 et
