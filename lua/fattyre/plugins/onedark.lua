return {
  'navarasu/onedark.nvim',
  lazy = false,
  priority = 100,
  config = function()
    require('onedark').setup({
      style = 'darker',
      transparent = true,
      ending_tildes = true,
    })
    vim.cmd('colorscheme onedark')
  end
}
