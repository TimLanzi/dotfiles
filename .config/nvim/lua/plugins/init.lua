return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function (_, conf)
      conf.pickers = {
        find_files = {
          hidden = true,
          no_ignore = true,
          file_ignore_patterns = { ".git", "node_modules" }
        },
      }

      return conf
    end
  },

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        ignore = false,
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      -- require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "lua",
        "luadoc",
        "printf",
        "vim",
        "vimdoc",
        "astro",
        "bash",
        "cmake",
        "cpp",
        "css",
        "csv",
        "dockerfile",
        "elixir",
        "erlang",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "go",
        "gomod",
        "gosum",
        "html",
        "javascript",
        "json",
        "jsdoc",
        "json5",
        -- "latex",
        "markdown",
        "markdown_inline",
        "nginx",
        "nix",
        "prisma",
        "proto",
        "python",
        "regex",
        "rust",
        "scss",
        "sql",
        "ssh_config",
        "svelte",
        "tmux",
        "toml",
        "tsx",
        "typescript",
        "xml",
        "yaml",
      },
    },
  },
}
