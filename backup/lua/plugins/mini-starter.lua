-- splash screen
return {

  -- enable mini.starter
  {
    "echasnovski/mini.starter",
    version = false,
    event = "VimEnter",
    opts = function()
      local logo = table.concat({
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⡀⠀⢀⣀⡀⠀⠀⣀⣀⠀⣀⡀⠀⣀⣀⠀⠀⠀⢀⣀⣀⡀⠀⠀⠀⠀ ",
        "⣿⣿⣰⣿⣿⣿⣷⡀⠀⠀⣠⣶⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⢸⣇⠀⠀⠀⠀⠀⠀⠀⣰⣾⣿⠿⠿⠿⠿⠇⠀⠘⣿⣿⡄⠀⠀⢠⣿⣿⠃⠀⠿⢿⣿⣧⣼⠿⢿⣿⣧⠀⣿⣿⡿⢿⣿⡾⢿⣿⣧⠀⠀⠸⠿⠿⢿⣿⣷⣦⠀⠀",
        "⣿⣿⠏⠀⠀⣿⣿⡇⠀⢀⣿⣿⣃⣀⣀⣹⣿⣷⠀⠀⠀⠀⢀⣠⣿⣿⣄⡀⠀⠀⠀⠀⠀⠻⣿⣷⣦⣤⣄⡀⠀⠀⠀⠹⣿⣷⠀⠀⣼⣿⡏⠀⠀⠀⢸⣿⣿⠁⠀⠈⠛⠛⠀⣿⣿⡇⢸⣿⡇⢸⣿⣿⠀⠀⣠⣤⣤⣤⣤⣿⣿⡆⠀",
        "⣿⣿⠀⠀⠀⣿⣿⡇⠀⠈⣿⣿⡛⠛⠛⠛⠛⠛⠀⠚⠛⠛⠿⣿⣿⣿⣿⠿⠟⠛⠓⠀⠀⠀⠈⠉⠙⠛⢿⣿⣧⠀⠀⠀⢻⣿⣇⢰⣿⡿⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⠀⠀⠀⣿⣿⡇⢸⣿⡇⢸⣿⣿⠀⣼⣿⡟⠉⠉⢉⣿⣿⡇⠀",
        "⣿⣿⠀⠀⠀⣿⣿⡇⠀⠀⠙⢿⣿⣷⣶⣶⣶⡆⠀⠀⠀⠀⠀⠈⢿⡿⠁⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠈⣿⣿⣿⣿⠃⠀⠀⢰⣶⣾⣿⣿⣶⣶⠀⠀⠀⠀⣿⣿⡇⢸⣿⡇⢸⣿⣿⠀⠸⢿⣿⣶⣶⠟⢿⣿⣿⡆",
        "⠉⠉⠀⠀⠀⠉⠉⠁⠀⠀⠀⠀⠀⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
      }, "\n")
      local pad = string.rep(" ", 22)
      local new_section = function(name, action, section)
        return { name = name, action = action, section = pad .. section }
      end

      local starter = require("mini.starter")
      --stylua: ignore
      local config = {
        evaluate_single = true,
        header = logo,
        items = {
          new_section("Find file", "Telescope find_files", "Telescope"),
          new_section("Recent files", "Telescope oldfiles", "Telescope"),
          new_section("Grep Root", "LiveGrepGitRoot", "Telescope"),
          new_section("New file", "ene | startinsert", "Neovim"),
          new_section("Quit", "qa", "Neovim"),
        },
        content_hooks = {
          starter.gen_hook.adding_bullet(pad .. "󰫢 ", false),
          starter.gen_hook.aligning("center", "center"),
        },
        silent = true,
      }
      return config
    end,
  },
}
