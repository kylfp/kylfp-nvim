return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  lazy = false,
  dependencies = {
    {
      "L3MON4D3/LuaSnip",
      version = "v2.*",
      dependencies = { "rafamadriz/friendly-snippets" },
      config = function ()
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
  },
  version = "v0.*",

  opts = {
    keymap = {
      ['<C-e>'] = { 'hide' },
      ['<CR>'] = { 'accept', 'fallback' },
      ['<C-k>'] = { 'select_prev', 'fallback' },
      ['<C-j>'] = { 'select_next', 'fallback' },
      ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
      ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
      ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
      ['<Tab>'] = { 'snippet_forward', 'fallback' },
      ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
    },
    appearance = {
      use_nvim_cmp_as_default = true, -- check for updates in future releases
      nerd_font_variant = "normal", -- mono or normal
    },
    snippets = {
      expand = function(snippet)
        require("luasnip").lsp_expand(snippet)
      end,
      active = function(filter)
        if filter and filter.direction then
          return require('luasnip').jumpable(filter.direction)
        end
        return require('luasnip').in_snippet()
      end,
      jump = function(direction)
        require('luasnip').jump(direction)
      end,
    },
    sources = {
      default = { "lsp", "LuaSnip", "path", "buffer", },
    },
  },

  opts_extend = { },
}
