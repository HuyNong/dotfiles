return {
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {}
    end,
  },
  {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
    config = function()
      local comment = require "Comment"
      local ts_context_commentstring = require "ts_context_commentstring.integrations.comment_nvim"
      comment.setup {
        pre_hook = ts_context_commentstring.create_pre_hook(),
      }
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
      vim.keymap.set("n", "<leader>ee", ":Neotree<CR>", { desc = "Neotree: focus", silent = true })
      vim.keymap.set("n", "<leader>et", ":Neotree toggle<CR>", { desc = "Neotree: toggle", silent = true })
    end,
  },
  {
    "tpope/vim-fugitive",
    config = function()
      vim.keymap.set("n", "<leader>gg", ":G<CR>", { desc = "Git: open change", silent = true })
      vim.keymap.set("n", "<leader>gp", ":Git push<CR>", { desc = "Git: push", silent = true })
    end,
  },
  {
    "mbbill/undotree",
    config = function()
      vim.keymap.set("n", "<leader>ud", vim.cmd.UndotreeToggle)
    end,
  },
}
