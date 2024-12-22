vim.keymap.set('n', '<leader>rr', ':silent lcd %:p:h<CR>:silent !explorer.exe %<CR>', { desc = 'Open file to browser' })
