-- vim.keymap.set('n', '<leader>rr', ':silent lcd %:p:h<CR>:silent !explorer.exe %<CR>', { desc = 'Open file to browser' })

vim.keymap.set('n', '<leader>rr', function()
  vim.ui.open(vim.fn.expand '%')
end, { noremap = true, silent = true })
