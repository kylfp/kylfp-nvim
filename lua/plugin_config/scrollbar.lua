require('scrollbar').setup({
  show = true,
  marks = {
    Cursor = {
      text = " ",
      priority = 0,
      gui = nil,
      color = nil,
      cterm = nil,
      color_nr = nil, -- cterm
      highlight = "Normal",
    },
  },
})
