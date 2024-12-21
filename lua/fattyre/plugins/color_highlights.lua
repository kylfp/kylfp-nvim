return {
  "brenoprata10/nvim-highlight-colors",
  lazy = true,
  config = function()
    local hc = require("nvim-highlight-colors")
    hc.setup {
      render = "background", -- virtual
      virtual_symbol = '■',
      enable_named_colors = true,
    }
  end,
}
