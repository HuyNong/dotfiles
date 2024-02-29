local bind = vim.api.nvim_set_keymap

bind('n', '<C-d>', '<C-d>zz<CR>', {})
bind('n', '<C-u>', '<C-u>zz<CR>', {})
bind('n', 'n', 'nzz', {})
bind('n', 'N', 'Nzz', {})

bind('n', '<C-j>', '<CMD>wincmd j<CR>', { silent = true })
bind('n', '<C-k>', '<CMD>wincmd k<CR>', { silent = true })
bind('n', '<C-h>', '<CMD>wincmd h<CR>', { silent = true })
bind('n', '<C-l>', '<CMD>wincmd l<CR>', { silent = true })
bind('n', '<leader>bc', '<CMD>%bd!<CR>', { silent = true })

bind('x', 'Y', '"+y<CR>', { noremap = true, silent = true })
