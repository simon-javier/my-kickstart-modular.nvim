return {
  {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',
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
