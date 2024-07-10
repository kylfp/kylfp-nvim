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
  dashboard.button('1', '󰥨 | Find File', ':lua require("fzf-lua").files()<CR>'),
  dashboard.button('2', ' | Recent Files', ':lua require("fzf-lua").oldfiles()<CR>'),
  dashboard.button("3", "󱏒 | Explore Files", ":lua MiniFiles.open()<CR>"),
  dashboard.button("4", "󰒲 | Lazy", ":Lazy<CR>"),
  dashboard.button("5", " | Mason", ":Mason<CR>"),
  dashboard.button("6", "󰗼 | Exit", ":qa<CR>"),
}

-- menu footer
dashboard.section.footer.val = "FatTyre NeoVim"

-- menu colors
dashboard.section.header.opts.hl =  "Special"
dashboard.section.buttons.opts.hl = "Label"
dashboard.section.footer.opts.hl =  "Label"

-- setup
return alpha.setup(dashboard.opts)
