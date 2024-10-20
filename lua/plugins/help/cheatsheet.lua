return {
  'Djancyp/cheat-sheet',
  config = function()
    -- Import the cheat-sheet module
    local cheat_sheet = require 'cheat-sheet'

    -- Setup configuration for cheat-sheet
    cheat_sheet.setup {
      auto_fill = {
        filetype = true,
        current_word = false,
      },
      main_win = {
        style = 'minimal',
        border = 'double',
      },
      input_win = {
        style = 'minimal',
        border = 'double',
      },
    }
  end,
}
