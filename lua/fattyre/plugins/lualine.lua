local filenameSettings = {
  'filename',
  symbols = {
    modified = '  ',
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
    modified = '  '
  }
}

local function neovim()
  return [[ ]]
end

local function sep()
  return [[]]
end

return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      disaled_filetypes = {
        'NvimTree',
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 50,
        tabline = 100,
        winbar = 100,
      },
    },
    sections = {
      lualine_a = { { neovim }, 'mode' },
      lualine_b = { 'diagnostics' },
      lualine_c = { filenameSettings },
      lualine_x = { 'filetype' },
      lualine_y = { 'encoding', 'fileformat' },
      lualine_z = { 'progress', 'location' },
    },
    inactive_sections = {
      lualine_a = { },
      lualine_b = { },
      lualine_c = { filenameSettings },
      lualine_x = { 'location' },
      lualine_y = { },
      lualine_z = { },
    },
    -- winbar = {
    --   lualine_a = { },
    --   lualine_b = { },
    --   lualine_c = { bufferSettings },
    --   lualine_x = { },
    --   lualine_y = { },
    --   lualine_z = { },
    -- },
    -- tabline = {
    --   lualine_a = { },
    --   lualine_b = { },
    --   lualine_c = { 'branch', 'diff' },
    --   lualine_x = { },
    --   lualine_y = { },
    --   lualine_z = { },
    -- },
  }
}
