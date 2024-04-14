local ok, alpha = pcall(require, "alpha")
if not ok then
  return
end

local _, dashboard = pcall(require,"alpha.themes.dashboard")

-- Menu Title
dashboard.section.header.val =
{
  [[                                                ]],
  [[                                                ]],
  [[                                                ]],
  [[                                                ]],
  [[███████╗ █████╗ ████████╗██╗   ██╗██╗███╗   ███╗]],
  [[██╔════╝██╔══██╗╚══██╔══╝██║   ██║██║████╗ ████║]],
  [[█████╗  ███████║   ██║   ██║   ██║██║██╔████╔██║]],
  [[██╔══╝  ██╔══██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║]],
  [[██║     ██║  ██║   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║]],
  [[╚═╝     ╚═╝  ╚═╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝]],
  [[                                                ]],
  [[                                                ]],
  [[                                                ]],
  [[                                                ]],
  [[                                                ]],
  [[                                                ]],
}

-- menu navigation buttons
dashboard.section.buttons.val =
{
  dashboard.button("1", "󰥨 | Find File", ":lua require('telescope.builtin').find_files(); print('> look up...')<CR>"),
  dashboard.button("2", " | Recent Files", ":lua require('telescope.builtin').oldfiles(); print('> recent files...')<CR>"),
  dashboard.button("3", " | New File", ":ene <BAR> startinsert<CR>"),
  dashboard.button("4", "󱏒 | Tree", ":Triptych<cr>"),
  dashboard.button("5", "󰗼 | Exit", ":qa<CR>"),
}

-- menu footer
dashboard.section.footer.val = "FatTyre NeoVim"

-- menu colors
dashboard.section.header.opts.hl =  "Special"
dashboard.section.buttons.opts.hl = "Label"
dashboard.section.footer.opts.hl =  "Label"

-- setup
return alpha.setup(dashboard.opts)
