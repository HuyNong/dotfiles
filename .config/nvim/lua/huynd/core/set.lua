vim.g.mapleader = ' '

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Highlight current line
vim.cmd[[set cursorline]]
-- Set the background color for the cursor line
vim.cmd[[hi CursorLine guibg=#282c34 ctermbg=235]]
