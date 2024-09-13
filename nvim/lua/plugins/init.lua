return {
  -- formatting
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },
  -- fidn files and oth
  {
    "nvim-telescope/telescope.nvim",
    defaults = {
      file_ignore_patterns = {
        "node_modules",
      },
    },
  },
  -- navigate with tmux (custom mappings required)
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    --   cmd = {
    --     "TmuxNavigateLeft",
    --     "TmuxNavigateDown",
    --     "TmuxNavigateUp",
    --     "TmuxNavigateRight",
    --     "TmuxNavigatePrevious",
    --   },
    --   keys = {
    --     { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
    --     { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
    --     { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
    --     { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
    --     { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    --   },
  },
  -- lsp
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- syntax highliting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "typescript",
        "javascript",
        "go",
      },
    },
  },
  -- quick find by two symbold in file (s key)
  {
    "ggandor/leap.nvim",
    event = "VeryLazy",
    config = function()
      require("leap").add_default_mappings(true)
    end,
  },
  -- tags for TS
  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    ft = "typescript",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  -- some features for GO
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    build = function()
      vim.cmd.GoInstallDeps()
    end,
  },
}
