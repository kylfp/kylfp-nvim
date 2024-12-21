local com = vim.cmd
local opt = vim.opt

com('let g:netrw_liststyle = 3')

-- Numbers
opt.relativenumber = true
opt.number = true

-- Tabbing/Indents
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Seach
opt.ignorecase = true
opt.smartcase = true

opt.wrap = false
opt.cursorline = true
opt.colorcolumn = "100"                -- Highlight column

opt.termguicolors = true
opt.signcolumn = 'yes'

opt.backspace = 'indent,eol,start'

opt.clipboard:append('unnamedplus')

-- Window Splits
opt.splitright = true
opt.splitbelow = true

opt.scrolloff = 15                     -- vertical Scroll before edge
opt.sidescrolloff = 15                 -- horizontal scroll before edge
