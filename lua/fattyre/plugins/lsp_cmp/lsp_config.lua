return {
  "neovim/nvim-lspconfig",
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    "saghen/blink.cmp",
    -- { "antosha417/nvim-lsp-file-operations", config = true },
    -- { "folke/lazydev.nvim", opts = {} },
  },

  config = function()
    local capabilities = require("blink.cmp").get_lsp_capabilities()
    local lspconfig = require("lspconfig")

    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          completion = {
            callSnippet = "Replace",
          },
        },
      },
    })

    lspconfig["pyright"].setup({ capabilities = capabilities })
    lspconfig["ts_ls"].setup({ capabilities = capabilities })
    lspconfig["cssls"].setup({ capabilities = capabilities })
    lspconfig["html"].setup({ capabilities = capabilities })
  end,
}
