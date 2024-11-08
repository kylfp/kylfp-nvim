require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "pylsp",
    "jdtls",
    "clangd",
    "tsserver",
    "eslint",
    "cssls",
    "emmet_language_server",
    "marksman"
  }
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  -- vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {
          'vim',
        },
      },
    }
  }
}

require("lspconfig").pylsp.setup {
  on_attach = on_attach,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {
            'E303'-- List Python Errors Codes
          },
          maxLineLength = 100
        }
      }
    }
  }
}

require("lspconfig").jdtls.setup {
  on_attach = on_attach
}

require("lspconfig").clangd.setup {
  on_attach = on_attach
}

require("lspconfig").tsserver.setup {
  on_attach = on_attach
}

require("lspconfig").eslint.setup {
  on_attach = on_attach
}

require("lspconfig").cssls.setup {
  on_attach = on_attach
}

require("lspconfig").emmet_language_server.setup {
  on_attach = on_attach
}

require("lspconfig").marksman.setup {
  on_attach = on_attach
}
