return {
  -- {
  --     "catppuccin/nvim",
  --     priority = 1000,
  --     name = "catppuccin",
  --     config = function()
  --         require("catppuccin").setup {
  --             flavour = "mocha",
  --             transparent_background = true,
  --         }
  --         vim.cmd.colorscheme "catppuccin"
  --     end,
  -- },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function(opts)
      require("gruvbox").setup({
        transparent_mode = true,
      })

      vim.o.background = "dark" -- or "light" for light mode
      vim.cmd([[colorscheme gruvbox]])
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup {
        sections = {
          lualine_b = { "branch", "diff" },
          lualine_x = { "diagnostics" },
          lualine_y = {},
          lualine_z = { "location", "progress" },
        },
      }
    end,
  },
}
