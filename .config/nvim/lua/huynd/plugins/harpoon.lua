return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require "harpoon"
    harpoon.setup {}
    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():append()
    end, { desc = "Harpoon: add file" })
    vim.keymap.set("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Harpoon: toggle file menu" })

    vim.keymap.set("n", "<A-1>", function()
      harpoon:list():select(1)
    end, { desc = "Harpoon: select file 1" })
    vim.keymap.set("n", "<A-2>", function()
      harpoon:list():select(2)
    end, { desc = "Harpoon: select file 2" })
    vim.keymap.set("n", "<A-3>", function()
      harpoon:list():select(3)
    end, { desc = "Harpoon: select file 3" })
    vim.keymap.set("n", "<A-4>", function()
      harpoon:list():select(4)
    end, { desc = "Harpoon: select file 4" })
  end,
}
