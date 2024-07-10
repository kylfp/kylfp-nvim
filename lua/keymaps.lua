-- Useful, don't touch
local opts = {noremap = true, silent = true}
local term_opts = {silent = true}

-- Shorten Function Name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- EDITOR
keymap("n", "<leader>w", "<Cmd>w<CR>", opts)    -- Write -> Space + w
keymap("n", "<leader>jk", "<Cmd>Esc<CR>", opts)    -- Write -> Space + w
keymap("n", "<leader>nh", "<Cmd>noh<CR>", opts) -- Remove Highlights -> Space + nh
keymap("n", "<leader>md", ":set wrap<CR> <bar> :set linebreak<CR> <bar> :set spell<CR>", opts) -- Setup for writing with MD
keymap("n", "<leader>mdx", ":set nowrap<CR> <bar> :set nolinebreak<CR> <bar> :set nospell<CR>", opts) -- Setup for writing with MD

-- TERMINAL
keymap('n', '<leader>t', ':terminal<CR>', opts)
keymap('t', '<esc>', [[<C-\><C-n>]], opts)

-- Move Between Windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Move Between Buffers
keymap('n', '<leader>.', ':bnext<CR>', opts)
keymap('n', '<leader>,', ':bprev<CR>', opts)

-- Move Between Tabs
keymap('n', '<C-t>', ':tabnew<CR>', opts)
keymap('n', '<leader>>', ':+tabnext<CR>', opts)
keymap('n', '<leader><', ':-tabnext<CR>', opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move text up and Down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- PLUGINS
-- LSP
keymap('n', '<leader>ca', ':lua require("fzf-lua").lsp_code_actions()<CR>', opts)
keymap('n', '<leader>R', ':JavaRunnerRunMain<CR>', opts)
-- keymap('n', '<leader>gd', 'vim.lsp.buf.definition<CR>', opts)
-- keymap('n', '<leader>gr', ':lua require("fzf-lua").lsp_references()<CR>', opts)
-- keymap('n', '<leader>gd', ':lua require("fzf-lua").lsp_definitions()<CR>', opts)

-- Fuzzy Finder
keymap('n', '<leader>1', ':lua require("fzf-lua").files()<CR>', opts)
keymap('n', '<leader>2', ':lua require("fzf-lua").buffers()<CR>', opts)
keymap('n', '<leader>9', ':lua require("fzf-lua").grep_project()<CR>', opts)
keymap('n', '<leader>0', ':lua require("fzf-lua").grep_curbuf()<CR>', opts)

-- Highlight Colors
keymap('n', '<leader>hc', ':HighlightColors Toggle<CR>', opts)

-- Triptych
keymap('n', '<leader>3', ':lua MiniFiles.open()<CR>', opts)

-- BufDel
keymap('n', '<leader>q', ':BufDel<CR>', opts)

-- Spectre
-- keymap('n', '<leader>9', ':lua require("spectre").open_file_search()<CR>', opts)                  -- Search File General
-- keymap('n', '<leader>7', ':lua require("spectre").toggle()<CR>', opts)                            -- Search Working Directory General

-- Mini
keymap('n', '<leader>T', ':lua MiniTrailspace.trim()<CR>', opts) -- Remove all trailing whitespace
