return {
    {
        'kylechui/nvim-surround',
        version = '*', -- Use for stability; omit to use `main` branch for the latest features
        event = 'VeryLazy',
        config = function()
            require('nvim-surround').setup({})
        end
    },
    {
        'numToStr/Comment.nvim',
        event = { 'BufReadPre', 'BufNewFile' },
        dependencies = {
            'JoosepAlviste/nvim-ts-context-commentstring',
        },
        config = function()
            local comment = require('Comment')
            local ts_context_commentstring = require('ts_context_commentstring.integrations.comment_nvim')
            comment.setup({
                pre_hook = ts_context_commentstring.create_pre_hook(),
            })
        end
    },
    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
            'MunifTanjim/nui.nvim',
        },
    }
}
