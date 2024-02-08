return {
    { "L3MON4D3/LuaSnip",    dependencies = { "saadparwaiz1/cmp_luasnip", "rafamadriz/friendly-snippets" } },
    { "hrsh7th/cmp-nvim-lsp" },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require "cmp"
            require("luasnip.loaders.from_vscode").load {}

            cmp.setup {
                snippet = {
                    -- REQUIRED - you must specify a snippet engine
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert {
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm { select = true }, -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                },
                sources = cmp.config.sources {
                    { name = "nvim_lsp" },
                    { name = "luasnip" }, -- For luasnip users.
                    { name = "buffer" },
                    { name = "cmp_tabnine" },
                },
            }

            local compare = require "cmp.config.compare"
            require("cmp").setup {
                sorting = {
                    priority_weight = 2,
                    comparators = {
                        require "cmp_tabnine.compare",
                        compare.exact,
                        compare.offset,
                        compare.score,
                        compare.recently_used,
                        compare.kind,
                        compare.sort_text,
                        compare.length,
                        compare.order,
                    },
                },
            }
        end,

        dependencies = {
            {
                "tzachar/cmp-tabnine",
                build = "./install.sh",
                config = function()
                    local tabnine = require "cmp_tabnine.config"
                    tabnine:setup {} -- put your options here
                end,
            },
        },
    },
}
