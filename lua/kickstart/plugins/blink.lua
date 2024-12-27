return {
  {
    'saghen/blink.cmp',
    dependencies = {
      {
        'L3MON4D3/LuaSnip',
        -- follow latest release.
        version = 'v2.*', -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = 'make install_jsregexp',
        dependencies = { 'rafamadriz/friendly-snippets' },
        config = function()
          require('luasnip.loaders.from_vscode').lazy_load()
          require('luasnip.loaders.from_vscode').lazy_load '~/.config/nvim/snippets/'
          require('luasnip.loaders.from_snipmate').lazy_load { paths = { '~/.config/nvim/snippets' } }
        end,
      },
    },
    version = '*',
    opts = {
      keymap = { preset = 'default' },

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono',
      },
      signature = { enabled = true },
      completion = {
        ghost_text = {
          enabled = true,
        },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
