local bind = vim.keymap.set

bind('n', '<C-d>', '<C-d>zz<CR>')
bind('n', '<C-u>', '<C-u>zz<CR>')

bind('n', '<C-j>', ':wincmd j<CR>')
bind('n', '<C-k>', ':wincmd k<CR>')
bind('n', '<C-h>', ':wincmd h<CR>')
bind('n', '<C-l>', ':wincmd l<CR>')
