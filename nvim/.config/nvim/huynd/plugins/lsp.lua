return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = { "lua_ls", "html", "cssls", "tsserver", "intelephense" },
            }
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lsp = require "lspconfig"
            local servers = { "lua_ls", "html", "cssls", "tsserver", "intelephense" }

            for _, s in ipairs(servers) do
                lsp[s].setup {
                    capabilities = capabilities,
                }
            end

            vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "LSP: open diagnostic" })
            vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "LSP: goto previous diagnostic" })
            vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "LSP: goto next diagnostic" })
            vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "LSP: set location list" })

            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("UserLspConfig", {}),
                callback = function(ev)
                    -- Enable completion triggered by <c-x><c-o>
                    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

                    vim.keymap.set("n", "gD", vim.lsp.buf.declaration,
                        { buffer = ev.buf, desc = "LSP: type declearation" })
                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = ev.buf, desc = "LSP: definition" })
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = ev.buf, desc = "LSP: hover" })
                    vim.keymap.set("n", "gi", vim.lsp.buf.implementation,
                        { buffer = ev.buf, desc = "LSP: implementation" })
                    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help,
                        { buffer = ev.buf, desc = "LSP: signature help" })
                    vim.keymap.set(
                        "n",
                        "<leader>D",
                        vim.lsp.buf.type_definition,
                        { buffer = ev.buf, desc = "LSP: type definition" }
                    )
                    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = ev.buf, desc = "LSP: rename" })
                    vim.keymap.set(
                        { "n", "v" },
                        "<leader>ca",
                        vim.lsp.buf.code_action,
                        { buffer = ev.buf, desc = "LSP: perform code actions" }
                    )
                    vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = ev.buf, desc = "LSP: go to references" })
                    vim.keymap.set("n", "<leader>fm", function()
                        vim.lsp.buf.format { async = true }
                    end, { buffer = ev.buf, desc = "LSP: format buffer" })
                end,
            })

            -- border lsp popup window
            local _border = "single"
            vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = _border })
            vim.lsp.handlers["textDocument/signatureHelp"] =
                vim.lsp.with(vim.lsp.handlers.signature_help, { border = _border })
            vim.diagnostic.config { float = { border = _border } }
            require("lspconfig.ui.windows").default_options = {
                border = _border,
            }
        end,
    },
}
