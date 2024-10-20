-- [[ Configure and install plugins ]]

require('lazy').setup({
  -- UI
  require 'plugins.ui.neo-tree',
  require 'plugins.ui.gitsigns',
  require 'plugins.ui.which-key',
  require 'plugins.ui.onedark',
  require 'plugins.ui.todo-comments',

  -- QoL
  require 'plugins.qol.telescope',
  require 'plugins.qol.mini',
  require 'plugins.qol.autopairs',
  require 'plugins.qol.terminal',

  -- LSP
  require 'plugins.lsp.lspconfig',
  require 'plugins.lsp.conform',
  require 'plugins.lsp.cmp',
  require 'plugins.lsp.treesitter',
  -- require 'plugins.lsp.lint',

  -- Debug
  require 'plugins.debug.debug',

  -- Tests
  require 'plugins.tests.coverage',

  -- Import smaller plugins from plugins/init.lua
  { import = 'plugins' },
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
