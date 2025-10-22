local telescopeConfig = require("telescope.config")

local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

table.insert(vimgrep_arguments, "--hidden")
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/.git/*")

local plugin = {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        vimgrep_arguments = vimgrep_arguments,
      }
      -- pickers = {
      --   find_files = {
      --     -- hidden = true,
      --     file_ignore_patterns = { "node_modules", ".git", ".next", "build", "dist" },
      --   },
      --   live_grep = {
      --     hidden = true,
      --     file_ignore_patterns = { "node_modules", ".git", ".next", "build", "dist" },
      --   },
      -- },
    },
  }
}

return plugin
