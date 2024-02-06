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
        lazy = false,
        config = function()
            require('Comment').setup({})
        end
    },
}
