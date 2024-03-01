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

-- Move Between Windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Move Between Buffers
keymap('n', '<leader>.', ':bnext<CR>', opts)
keymap('n', '<leader>,', ':bprev<CR>', opts)

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
-- Telescope
keymap("n", "<leader>1", ":Telescope find_files prompt_prefix=󰙅 hidden=true <cr>", opts)
keymap("n", "<leader>2", ":Telescope buffers prompt_prefix=󱦞 hidden=true <cr>", opts)
keymap("n", "<leader>8", ":Telescope live_grep prompt_prefix=󰭎 <cr>", opts)
keymap("n", "<leader>0", ":Telescope current_buffer_fuzzy_find prompt_prefix= <cr>", opts)

-- Highlight Colors
keymap('n', '<leader>hc', ':HighlightColors Toggle<cr>', opts)

-- Triptych
keymap("n", "<leader>4", ':Triptych<cr>', opts)

-- BufDel
keymap('n', '<leader>q', ':BufDel<cr>', opts)

-- Spectre
keymap('n', '<leader>9f', ':lua require("spectre").open_file_search({select_word=true})<cr>', opts) -- Search File for Current Word
keymap('n', '<leader>7f', ':lua require("spectre").open_file_search()<cr>', opts)                  -- Search File General
keymap('n', '<leader>9a', ':lua require("spectre").toggle({select_word=true})<cr>', opts)           -- Search Working Directory Current Word
keymap('n', '<leader>7a', ':lua require("spectre").toggle()<cr>', opts)                            -- Search Working Directory General

-- Mini
keymap('n', '<leader>T', ':lua MiniTrailspace.trim()<cr>', opts) -- Remove all trailing whitespace
