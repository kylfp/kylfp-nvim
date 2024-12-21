return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "mfussenegger/nvim-lint",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function ()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        },
        border = "rounded",
        width = 0.8,
        height = 0.8,
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "awk_ls",
        "bashls",
        "clangd",
        "cssls",
        "css_variables",
        "emmet_language_server",
        "html",
        "jdtls",
        "ts_ls",
        "lua_ls",
        "marksman",
        "pyright",
      }
    })
    mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"pylint",
				"eslint_d",
			},
    })
  end,
}
