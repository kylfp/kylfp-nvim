local function arch()
    return [[ ]]
end

local filenameSettings = {
  'filename',
  symbols = {
    modified = ' ',
    readonly = '󱓷 Only',
    -- NvimTree_1 = '󰙅 NvimTree',
    unnamed = '',
    newfile = ' '
  }
}

local bufferSettings = {
  'buffers',
  filetype_names = {
    TelescopePrompt = '󰭎 Telescope',
    NvimTree =  '󰙅 NvimTree',
  },
  mode = 4,
  symbols = {
    modified = ' '
  }
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = { filenameSettings },
    lualine_x = {'searchcount', 'diagnostics', 'filetype', { arch } },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { filenameSettings },
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
    lualine_c = { { 'filename', path = 1 }, }
  },
  winbar = {},
  inactive_winbar = {},
  extensions = { 'nvim-tree', 'lazy', 'mason' }
}
