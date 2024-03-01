require 'triptych'.setup({
  mappings = {
    -- Everything below is buffer-local, meaning it will only apply to Triptych windows
    show_help = 'g?',
    jump_to_cwd = '.',  -- Pressing again will toggle back
    nav_left = 'h',
    nav_right = { 'l', '<CR>' },
    delete = 'd',
    add = 'a',
    copy = 'c',
    rename = 'r',
    cut = 'x',
    paste = 'p',
    quit = 'q',
    toggle_hidden = '<leader>.',
  },
  options = {
    show_hidden = true,
    line_numbers = {
      enabled = true,
      relative = true,
    },
  }
})

