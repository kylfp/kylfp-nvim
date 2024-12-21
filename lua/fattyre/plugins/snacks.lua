return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {

    -- DashBoard
    dashboard = {
      enabled = true,
      preset = {
        keys = {
          { icon = "󰥨 ", key = "ff", desc = "Find File", action = ":lua require('fzf-lua').files()" },
          { icon = " ", key = "fr", desc = "Recent File", action = ":lua require('fzf-lua').oldfiles()", },
          { icon = "󱏒 ", key = "ee", desc = "Explore Files", action = ":NvimTreeToggle" },
          { icon = "󰒲 ", key = "L", desc = "Lazy Plugin Manager", action = ":Lazy" },
          { icon = " ", key = "M", desc = "Mason LSP Manager", action = ":Mason" },
          { icon = "󰥨 ", key = "Q", desc = "Quit", action = ":qa" },
        },
        header = [[
███████╗ █████╗ ████████╗██╗   ██╗██╗███╗   ███╗
██╔════╝██╔══██╗╚══██╔══╝██║   ██║██║████╗ ████║
█████╗  ███████║   ██║   ██║   ██║██║██╔████╔██║
██╔══╝  ██╔══██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
██║     ██║  ██║   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝     ╚═╝  ╚═╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝]],
      },
    },

    -- Indent level indicator
    indent = { enabled = true },

    -- Smooth scrolling animation
    -- scroll = { enabled = true },

    -- Better vim input
    input = { enabled = true },

    -- Notifications
    -- notifier = { enabled = true },
    -- notify = { enabled = true },

  },
}
