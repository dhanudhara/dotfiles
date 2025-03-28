return {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = { 'rafamadriz/friendly-snippets' },

  version = '1.*',
  opts = {
    keymap = { 
	preset = 'enter',
    },

    appearance = {
      nerd_font_variant = 'mono'
    },

    completion = { 
	documentation = { auto_show = true },
	ghost_text = { enabled = true }
    },


    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
