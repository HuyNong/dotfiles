vim.g.mapleader = ' '

vim.opt.nu = true
vim.opt.relativenumber = true
-- vim.opt.numberwidth = 20

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.signcolumn = 'yes'

vim.opt.colorcolumn = '140'

vim.opt.scrolloff = 8

-- Highlight current line
vim.cmd[[set cursorline]]
-- Set the background color for the cursor line
vim.cmd[[hi CursorLine guibg=#282c34 ctermbg=235]]
