require('mini.indentscope').setup()
require('mini.trailspace').setup()
require('mini.comment').setup()
require('mini.surround').setup()
require('mini.tabline').setup()
require('mini.pairs').setup()
require('mini.files').setup({
  windows = {
    preview = true,
    width_focus = 25,
    width_nofocus = 25,
    width_preview = 100,
  }
})
