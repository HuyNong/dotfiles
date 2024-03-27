return {
  "voldikss/vim-floaterm",
  config = function()
    vim.api.nvim_set_keymap(
      "n",
      "<leader>tf",
      "<CMD>FloatermNew --height=0.8 --width=0.8 --wintype=float --name=terminal --position=center<CR>",
      { desc = "Term: New float terminal" }
    )
    vim.api.nvim_set_keymap(
      "t",
      "<leader>tf",
      "<CMD>FloatermNew --height=0.8 --width=0.8 --wintype=float --name=terminal --position=center<CR>",
      { desc = "Term: New float terminal" }
    )
    vim.api.nvim_set_keymap("t", "<leader>tn", "<CMD>FloatermNext<CR>", { desc = "Term: Next terminal" })
    vim.api.nvim_set_keymap("t", "<leader>tp", "<CMD>FloatermPrev<CR>", { desc = "Term: Prev terminal" })
    vim.api.nvim_set_keymap("t", "<A-i>", "<CMD>FloatermToggle<CR>", { desc = "Term: Toggle" })
    vim.api.nvim_set_keymap("n", "<A-i>", "<CMD>FloatermToggle<CR>", { desc = "Term: Toggle" })
  end,
}
