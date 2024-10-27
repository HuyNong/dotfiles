return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  dependencies = {
    'echasnovski/mini.icons'
  },
  opts = {
    plugins = { spelling = true },
    defaults = {
      {
        mode = { "n", "v" },
        { "", group = "explorer" },
        { "", group = "code" },
        { "", group = "file/find" },
        { "", group = "next" },
        { "", group = "goto" },
        { "", group = "prev" },
        { "", group = "git" },
      },
    }
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.register(opts.defaults)
  end,
}
