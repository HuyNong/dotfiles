local bind = vim.keymap.set

bind('n', '<C-d>', '<C-d>zz<CR>')
bind('n', '<C-u>', '<C-u>zz<CR>')

bind('n', '<C-j>', '<CMD>wincmd j<CR>', { silent = true })
bind('n', '<C-k>', '<CMD>wincmd k<CR>', { silent = true })
bind('n', '<C-h>', '<CMD>wincmd h<CR>', { silent = true })
bind('n', '<C-l>', '<CMD>wincmd l<CR>', { silent = true })
