-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = 'Paste without replacing yank' })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = 'Copy to system clipboard' })
vim.keymap.set('n', '<leader>Y', [["+Y]], { desc = 'Copy line to system clipboard' })

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete without yanking' })

-- Move item in the quickfix list
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz', { desc = 'Next item in quickfix list' })
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz', { desc = 'Previous item in quickfix list' })

-- Move item in the location list (for the current buffer)
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz', { desc = 'Next item in location list' })
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz', { desc = 'Previous item in location list' })

-- Make the current file executable (useful for scripts), running silently
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true, desc = 'Make the current file executable' })

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open file explorer' })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected line(s) down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected line(s) up' })

vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join lines without moving cursor' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down and center' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up and center' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next search result and center' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous search result and center' })

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Open Undo Tree' })

vim.api.nvim_set_keymap(
  'n',
  '<F10>',
  ':lua print("hi<" .. vim.fn.synIDattr(vim.fn.synID(vim.fn.line("."), vim.fn.col("."), 1), "name") .. "> trans<" .. vim.fn.synIDattr(vim.fn.synID(vim.fn.line("."), vim.fn.col("."), 0), "name") .. "> lo<" .. vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.synID(vim.fn.line("."), vim.fn.col("."), 1)), "name") .. ">")<CR>',
  { noremap = true, silent = true }
)

-- vim: ts=2 sts=2 sw=2 et
