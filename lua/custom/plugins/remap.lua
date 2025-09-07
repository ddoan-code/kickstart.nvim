-- Jump to netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Move highlighted lines in visual mode with J and K
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Keep cursor position when appending line below with J
vim.keymap.set('n', 'J', 'mzJ`z')

-- Keep cursor in middle when jumping up and down with ctrl u/d
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Keep search term in middle when searching
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Keep buffer when pasting in visual mode
vim.keymap.set('x', '<leader>p', '"_dP')

-- Yank to system clipboard with leader y
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

-- Delete to void (clash atm)
--vim.keymap.set('n', '<leader>d', '"_d')
--vim.keymap.set('v', '<leader>d', '"_d')

-- Disable Q
vim.keymap.set('n', 'Q', '<nop>')

-- Switch projects with CTRL + f
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
-- Note: <leader>f formatting is handled by conform.nvim in init.lua

-- Quick fix navigation
--vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
--vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
--vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
--vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

-- Replace highlighted word with leader s
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- chmod +x without having to go do command line
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

return {}
