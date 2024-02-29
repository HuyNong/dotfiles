return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns

          local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
          end

          -- Navigation
          map("n", "]c", function()
            if vim.wo.diff then
              return "]c"
            end
            vim.schedule(function()
              gs.next_hunk()
            end)
            return "<Ignore>"
          end, { expr = true, desc = "Git: go to next change" })

          map("n", "[c", function()
            if vim.wo.diff then
              return "[c"
            end
            vim.schedule(function()
              gs.prev_hunk()
            end)
            return "<Ignore>"
          end, { expr = true, desc = "Git: go to previous change" })

          -- Actions
          map("n", "<leader>gcm", ":Git commit<CR>", { desc = "Git: commit" })
          map("n", "<leader>grh", gs.reset_hunk, { desc = "Git: reset hunk" })
          map("n", "<leader>gvh", gs.preview_hunk, { desc = "Git: view hunk change" })
          map("n", "<leader>gb", gs.toggle_current_line_blame, { desc = "Git: toggle current line blame" })
          map("n", "<leader>gB", function()
            gs.blame_line({ full = true })
          end, { desc = "Git: line blame full" })
        end,
      })
    end,
  },
  {
    "ThePrimeagen/git-worktree.nvim",
    config = function()
      require("git-worktree").setup()
      require("telescope").load_extension("git_worktree")
      vim.keymap.set(
        "n",
        "<leader>gwl",
        "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
        { desc = "Git: list worktrees" }
      )
      vim.keymap.set(
        "n",
        "<leader>gwc",
        "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
        { desc = "Git: create worktree" }
      )
    end,
  },
}
