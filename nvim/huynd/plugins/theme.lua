return {
    {
        "catppuccin/nvim",
        priority = 1000,
        name = "catppuccin",
        opts = {
            transparent_background = false,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
            integrations = {
                aerial = true,
                alpha = true,
                cmp = true,
                dashboard = true,
                flash = true,
                gitsigns = true,
                headlines = true,
                illuminate = true,
                indent_blankline = { enabled = true },
                leap = true,
                lsp_trouble = true,
                mason = true,
                markdown = true,
                mini = true,
                native_lsp = {
                    enabled = true,
                    underlines = {
                        errors = { "undercurl" },
                        hints = { "undercurl" },
                        warnings = { "undercurl" },
                        information = { "undercurl" },
                    },
                },
                navic = { enabled = true, custom_bg = "lualine" },
                neotest = true,
                neotree = true,
                noice = true,
                notify = true,
                semantic_tokens = true,
                telescope = true,
                treesitter = true,
                treesitter_context = true,
                which_key = true,
            },
        },
    },
    { 'arkav/lualine-lsp-progress' },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup({
                sections = {
                    -- lualine_x = {'encoding', 'fileformat', 'filetype'},
                    lualine_b = { 'branch', 'diff' },
                    lualine_x = { 'diagnostics' },
                    lualine_y = {},
                    lualine_z = { 'location', 'progress' }
                }
            })
        end
    }
}
