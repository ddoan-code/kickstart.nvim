local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Utility
map('n', '<leader>h', ':nohlsearch<CR>', opts)
map('n', '<C-c>', '<Esc>', opts)

-- Move lines up and down with Alt + j/k (visual mode)
map('v', '<A-j>', ':m .+1<CR>==', opts)
map('v', '<A-k>', ':m .-2<CR>==', opts)

-- Yank to clipboard
map('n', 'Y', '"+y$', opts)
map('v', 'Y', '"+y', opts)

-- Search and replace
-- Replace highlighted word with leader s
map('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- chmod +x without having to go do command line
map('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

-- Comment current line with CMD + /
map('n', '<D-/>', function()
  require('Comment.api').toggle.linewise.current()
end, { noremap = true, silent = true, desc = 'Toggle comment (CMD+/)' })

map('v', '<D-/>', function()
  require('Comment.api').toggle.linewise(vim.fn.visualmode())
end, { noremap = true, silent = true, desc = 'Toggle comment (CMD+/)' })

return {}
