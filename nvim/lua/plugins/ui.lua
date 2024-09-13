return {
  -- pretty create/rename/delete modal
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts = {},
  },
  -- better diagnostics
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
    -- enhanced quickfix preview (gr key)
    {
      "kevinhwang91/nvim-bqf",
      event = "VeryLazy",
    },
    -- huge ui plugin: notifications, cmd and search line and ...
    {
      "folke/noice.nvim",
      event = "VeryLazy",
      opts = {
        routes = {
          {
            filter = { event = "notify", find = "No information available" },
            opts = { skip = true },
          },
        },
        presets = {
          lsp_doc_border = true,
        },
      },
      dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
        "hrsh7th/cmp-cmdline",
      },
    },
    -- overrides of notifications for noice.nvim w
    {
      "rcarriga/nvim-notify",
      lazy = false,
      config = function()
        require("notify").setup {
          stages = "fade_in_slide_out",
          background_colour = "FloatShadow",
          timeout = 3000,
        }
        vim.notify = require "notify"
      end,
    },
  },
}
