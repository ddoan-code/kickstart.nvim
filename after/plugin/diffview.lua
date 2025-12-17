local diffview = require('diffview')

-- Open the diff view for current changes
vim.keymap.set('n', '<leader>gd', function()
  diffview.open()
end, { desc = '[G]it [D]iff view' })

-- Open file history
vim.keymap.set('n', '<leader>gh', function()
  diffview.open { 'HEAD' }
end, { desc = '[G]it file [H]istory' })

-- Close the diff view
vim.keymap.set('n', '<leader>gq', function()
  diffview.close()
end, { desc = '[G]it close diff (mnemonic: [Q]uit)' })

-- Optional: configure diffview behavior
require('diffview').setup({
  diff_binaries = false,
  enhanced_diff_hl = false,
  git_cmd = { 'git' },
  use_icons = true,
  icons = {
    folder_closed = "",
    folder_open = "",
  },
  signs = {
    fold_closed = "",
    fold_open = "",
    done = "✓",
  },
  view = {
    default = {
      layout = "diff2_horizontal",
    },
  },
})
