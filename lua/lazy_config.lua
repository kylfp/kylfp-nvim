local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  'nvim-lua/popup.nvim',                                                                      -- Popup (Window Management)
  'nvim-lua/plenary.nvim',                                                                    -- Plenary (Window Management)

  -- LSP
  'williamboman/mason.nvim',                                                                  -- LSP Manager
  'williamboman/mason-lspconfig.nvim',                                                        -- Mason -> LSP Config
  'neovim/nvim-lspconfig',                                                                    -- LSP Configuration Manager
  'nvim-java/nvim-java',                                                                      -- Java Specific LSP/Setup

  -- Completion (Nvim CMP)
  'hrsh7th/nvim-cmp',                                                                         -- Completions
  'hrsh7th/cmp-nvim-lsp',                                                                     -- LSP completions
  'hrsh7th/cmp-buffer',                                                                       -- Buffer Completions
  'hrsh7th/cmp-path',                                                                         -- Path completions
  'hrsh7th/cmp-cmdline',                                                                      -- CMD Line completions
  'L3MON4D3/LuaSnip',                                                                         -- Snippet Engine
  'saadparwaiz1/cmp_luasnip',                                                                 -- Completion Snippets
  'chrisgrieser/cmp-nerdfont',                                                                -- Nerdfont Completions
  'hrsh7th/cmp-calc',                                                                         -- Comletion Calculations

  -- General
  { 'nvim-treesitter/nvim-treesitter', build = ":TSUpdate" },                                 -- Treesitter
  { 'nvim-telescope/telescope.nvim', tag = '0.1.2', dependencies = 'nvim-lua/plenary.nvim' }, -- Telescope
  'ibhagwan/fzf-lua',
  { 'brenoprata10/nvim-highlight-colors', lazy = true, },                                     -- Color Highlights
  { 'echasnovski/mini.nvim', version = false },                                               -- Mini (See plugin_config/mini.lua)
  'nvim-lualine/lualine.nvim',                                                                -- Status line
  { 'goolord/alpha-nvim', dependencies = 'nvim-tree/nvim-web-devicons' },                     -- Greeter
  'ojroques/nvim-bufdel',                                                                     -- Buffer Deletion

  -- Color Themes
  -- 'folke/tokyonight.nvim',                                                                    -- Tokoynight Theme
  -- 'cryptomilk/nightcity.nvim',                                                                -- Nightcity Theme
  { 'uloco/bluloco.nvim', lazy = false, priority = 1000, dependencies = 'rktjmp/lush.nvim', },
  'catppuccin/nvim',                                                                          -- Catppuccin Theme
  -- 'navarasu/onedark.nvim',                                                                    -- Onedark Theme
  -- 'Mofiqul/vscode.nvim',                                                                      -- VS Code Theme
  -- 'Shatur/neovim-ayu',                                                                        -- Ayu
  -- 'rebelot/kanagawa.nvim',                                                                    -- Kanagawa
  -- 'rose-pine/neovim',                                                                         -- Rose Pine
})
