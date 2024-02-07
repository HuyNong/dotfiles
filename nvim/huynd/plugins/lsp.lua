return {
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end,
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = { 'lua_ls', 'html', 'cssls', 'tsserver', 'intelephense' },
            })
        end,
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lsp = require('lspconfig')
            local servers = { 'lua_ls', 'html', 'cssls', 'tsserver', 'intelephense' }

            for _, s in ipairs(servers) do
                lsp[s].setup({})
            end

            vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
            vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
            vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
            vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                callback = function(ev)
                    -- Enable completion triggered by <c-x><c-o>
                    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

                    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration,
                        { buffer = ev.buf, desc = 'LSP: type declearation' })
                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = ev.buf, desc = 'LSP: definition' })
                    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = ev.buf, desc = 'LSP: hover' })
                    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation,
                        { buffer = ev.buf, desc = 'LSP: implementation' })
                    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help,
                        { buffer = ev.buf, desc = 'LSP: signature help' })
                    vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition,
                        { buffer = ev.buf, desc = 'LSP: type definition' })
                    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = ev.buf, desc = 'LSP: rename' })
                    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action,
                        { buffer = ev.buf, desc = 'LSP: perform code actions' })
                    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = ev.buf, desc = 'LSP: go to references' })
                    vim.keymap.set('n', '<leader>fm', function()
                        vim.lsp.buf.format { async = true }
                    end, { buffer = ev.buf, desc = 'LSP: format buffer' })
                end,
            })
        end,
    }
}
