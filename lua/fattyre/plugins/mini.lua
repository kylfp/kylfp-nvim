return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.cursorword").setup()
    require("mini.git").setup()
    require("mini.pairs").setup()
  end,
}
