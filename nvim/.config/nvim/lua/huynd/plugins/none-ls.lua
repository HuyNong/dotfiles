return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,

        -- js/ts
        -- require("none-ls.diagnostics.eslint_d"),
        null_ls.builtins.formatting.prettierd,

        -- php
        null_ls.builtins.formatting.phpcsfixer,

        -- go
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.goimports_reviser,
        null_ls.builtins.formatting.golines,
      },
    })
  end,
}
