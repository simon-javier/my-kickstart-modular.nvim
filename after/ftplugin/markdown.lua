local set = vim.opt_local

set.linebreak = true
set.wrap = true
set.textwidth = 80

vim.keymap.set({ 'n', 'v' }, 'j', 'gj')
vim.keymap.set({ 'n', 'v' }, 'k', 'gk')
vim.keymap.set('n', '<leader>rr', '<cmd>MarkdownPreview<CR>')
