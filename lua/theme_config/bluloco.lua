require("bluloco").setup({
  style = "dark",               -- "auto" | "dark" | "light"
  transparent = false,
  italics = true,
  terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
  guicursor   = true,
})
