return {
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_syntax_enabled = 0
      vim.g.vimtex_view_general_viewer = '/home/simon/.local/bin/sumatrapdf.sh'
      vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
      vim.g.vimtex_quickfix_autoclose_after_keystrokes = 1
    end,
  },
}
