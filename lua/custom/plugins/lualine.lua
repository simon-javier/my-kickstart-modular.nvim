return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    init = function()
      require('lualine').setup {

        sections = {
          lualine_c = {
            {
              'filename',
              path = 2,
            },
          },
        },

        inactive_sections = {
          lualine_c = {
            {
              'filename',
              path = 2,
            },
          },
        },

        options = {
          theme = 'auto',
        },
      }
    end,
  },
}
