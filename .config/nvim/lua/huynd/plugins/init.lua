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
            vim.keymap.set("n", "<leader>ee", "<CMD>Neotree<CR>", { desc = "Neotree: focus", silent = true })
            vim.keymap.set("n", "<leader>et", "<CMD>Neotree toggle<CR>", { desc = "Neotree: toggle", silent = true })
        end,
    },
    {
        "tpope/vim-fugitive",
        config = function()
            vim.keymap.set("n", "<leader>gg", "<CMD>G<CR>", { desc = "Git: open change", silent = true })
            vim.keymap.set("n", "<leader>gp", "<CMD>Git push<CR>", { desc = "Git: push", silent = true })
        end,
    },
    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle, { desc = "Undotree toggle", silent = true })
        end,
    },
    {
        "stevearc/oil.nvim",
        config = function()
            require("oil").setup()
            vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Oil: Open parent directory" })
        end,
    },
    {
        'voldikss/vim-floaterm',
        config = function()
            vim.keymap.set("n", "<leader>tf",
                "<CMD>FloatermNew --height=0.8 --width=0.8 --wintype=float --name=terminal --position=center<CR>",
                { desc = "Term: New float terminal" })
            vim.keymap.set("t", "<leader>tn", "<CMD>FloatermNext<CR>", { desc = "Term: Next terminal" })
            vim.keymap.set("t", "<leader>tp", "<CMD>FloatermPrev<CR>", { desc = "Term: Prev terminal" })
            vim.keymap.set("t", "<A-i>", "<CMD>FloatermToggle<CR>", { desc = "Term: Toggle" })
            vim.keymap.set("n", "<A-i>", "<CMD>FloatermToggle<CR>", { desc = "Term: Toggle" })
        end,
    },
    {
        "shellRaining/hlchunk.nvim",
        event = { "UIEnter" },
        config = function()
            require("hlchunk").setup({
                blank = {
                    enable = false,
                },
            })
        end
    },
}
