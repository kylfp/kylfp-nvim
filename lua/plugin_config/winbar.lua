require('winbar').setup({
  icons = true,
  diagnostics = true,
  buf_modified = true,
  filetype_exclude = {
    "help",
    "startify",
    "dashboard",
    "packer",
    "neo-tree",
    "neogitstatus",
    "NvimTree",
    "Trouble",
    "alpha",
    "lir",
    "Outline",
    "spectre_panel",
    "toggleterm",
    "TelescopePrompt",
    "prompt"
  },
})

vim.api.nvim_set_hl(0, "WinBar", {
  fg = "#a0a8b7",
  bg = "#30363f",
})
