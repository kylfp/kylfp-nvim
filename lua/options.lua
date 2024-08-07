vim.opt.clipboard = "unnamedplus"          -- allows access to system clipboard
vim.opt.cmdheight = 2                      -- extra space on neovim command line for messages
vim.opt.fileencoding = "utf-8"             -- file encoding
vim.opt.hlsearch = true                    -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                  -- ignore case in search patterns
vim.opt.mouse = "a"                        -- allow mouse use
vim.opt.pumheight = 10                     -- pop up menu height
vim.opt.showtabline = 0                    -- always show tablines
vim.opt.smartcase = true                   -- smartcase
vim.opt.smartindent = true                 -- auto smart indenting
vim.opt.splitbelow = true                  -- force hoizontal splits below current window
vim.opt.splitright = true                  -- force all vertical split right of current window
vim.opt.termguicolors = true               -- set term gui colors
vim.opt.timeoutlen = 1000                  -- set length for maped sequence to complete in milliseconds
vim.opt.undofile = true                    -- enable persistant undo
vim.opt.updatetime = 300                   -- faster completion (4000 default)
vim.opt.expandtab = true                   -- converts tabs into spaces
vim.opt.shiftwidth = 2                     -- number of spaces inserted for each indentation
vim.opt.tabstop = 2                        -- number of spaces for a tab
vim.opt.cursorline = true                  -- highlight current line
vim.opt.cursorcolumn = true                -- highlight current column
vim.opt.signcolumn = "yes"                 -- always show the sign column, other it would shift the text each time
vim.opt.wrap = false                       -- get rid of line wrapping
vim.opt.colorcolumn = "100"                -- Highlight column
vim.opt.guifont = "JetBrainsMono_Nerd_Font:h10" -- font used in graphical neovim applications

--Line Numbers
vim.opt.number = true                      -- show numbered lines
vim.opt.relativenumber = true              -- set relative numbered lines
vim.opt.numberwidth = 4                    -- set number column width to 4

--Scroll before edge of terminal
vim.opt.scrolloff = 15                     -- vertical Scroll before edge
vim.opt.sidescrolloff = 15                 -- horizontal scroll before edge
