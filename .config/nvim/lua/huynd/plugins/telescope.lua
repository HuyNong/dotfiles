return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
            "nvim-tree/nvim-web-devicons",
        },

        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope: Find files' })
            vim.keymap.set('n', '<leader>fa', builtin.git_files, { desc = 'Telescope: Find files in git' })
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope: Search live grep' })
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope: Find in buffers' })
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope: Find helps' })
            vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Telescope: Find recent files' })

            local actions = require("telescope.actions")
            require("telescope").setup({
                defaults = {
                    prompt_prefix = "   ",
                    path_display = { "truncate " },
                    sorting_strategy = "ascending",
                    mappings = {
                        i = {
                            ["<C-u>"] = false,
                            ["<Esc>"] = actions.close,
                            ["<C-j>"] = actions.move_selection_next,
                            ["<C-k>"] = actions.move_selection_previous
                        },
                    },
                    layout_config = {
                        prompt_position = 'top'
                    }
                }
            })
        end,
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {}
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}
