return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.g.mkdp_page_title = 'MD Preview | ${name}'
    -- vim.g.mkdp_browser = 'YOUR_BROWSER_COMMAND'
    vim.g.mkdp_auto_start = 0                   -- Auto-start the preview when opening a Markdown file
    vim.g.mkdp_auto_close = 1                   -- Auto-close the preview when the last Markdown file is closed
    vim.g.mkdp_combine_preview = 1              -- reuse previous opened preview window when you preview md file
    vim.g.mkdp_combine_preview_auto_refresh = 1 -- auto refetch combine preview contents on md buffer change
    vim.g.mkdp_refresh_slow = 0                 -- Disable slow refresh for better performance

    -- Keybind to toggle Markdown preview
    vim.api.nvim_set_keymap('n', '<leader>pm', '<Plug>MarkdownPreviewToggle',
      { desc = 'Toggle [M]arkdown [P]review', noremap = true, silent = true })
  end,
  ft = { "markdown" },
}
