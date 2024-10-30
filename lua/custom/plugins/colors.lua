return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      require('rose-pine').setup {
        disable_background = true,
      }

      function ColorMyPencils(color)
        color = color or 'rose-pine'
        vim.cmd.colorscheme(color)

        vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
      end

      ColorMyPencils()
      vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#21202e' })
      vim.api.nvim_set_hl(0, 'ColorColumn', { bg = '#21202e' })
      vim.api.nvim_set_hl(0, 'StatusLine', { bg = 'none', fg = '#908caa' })
      vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = 'none' })
    end,
  },
}
