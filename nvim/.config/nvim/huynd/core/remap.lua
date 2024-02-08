local bind = vim.keymap.set

bind('n', '<C-d>', '<C-d>zz<CR>')
bind('n', '<C-u>', '<C-u>zz<CR>')

bind('n', '<C-j>', ':wincmd j<CR>', { silent = true })
bind('n', '<C-k>', ':wincmd k<CR>', { silent = true })
bind('n', '<C-h>', ':wincmd h<CR>', { silent = true })
bind('n', '<C-l>', ':wincmd l<CR>', { silent = true })
