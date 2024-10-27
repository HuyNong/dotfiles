return {
  "voldikss/vim-floaterm",
  config = function()
    vim.g.floaterm_width = 0.8
    vim.g.floaterm_height = 0.8
    vim.g.floaterm_titleposition = 'center'

    vim.api.nvim_set_keymap("n", "<leader>tn", "<CMD>FloatermNew<CR>", { desc = "Term: New float terminal" })
    vim.api.nvim_set_keymap("t", "<leader>tn", "<CMD>FloatermNew<CR>", { desc = "Term: New float terminal" })
    vim.api.nvim_set_keymap("t", "<leader>tj", "<CMD>FloatermNext<CR>", { desc = "Term: Next terminal" })
    vim.api.nvim_set_keymap("t", "<leader>tk", "<CMD>FloatermPrev<CR>", { desc = "Term: Prev terminal" })
    vim.api.nvim_set_keymap("t", "<A-i>", "<CMD>FloatermToggle<CR>", { desc = "Term: Toggle" })
    vim.api.nvim_set_keymap("n", "<A-i>", "<CMD>FloatermToggle<CR>", { desc = "Term: Toggle" })
  end,
}
