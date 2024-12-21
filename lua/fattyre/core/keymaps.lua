local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "

-- General
keymap("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap("n", "<leader>nh", ":noh<CR>", { desc = "Clear search highlight" })

-- Splits
keymap("n", "<leader>sh", "<C-w>v", { desc = "Horizontal split" })
keymap("n", "<leader>sv", "<C-w>s", { desc = "Vertical split" })
keymap("n", "<leader>se", "<C-w>=", { desc = "Equalize split size" })
keymap("n", "<leader>sx", ":close<CR>", { desc = "Close split" })

keymap("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move to down split" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to up split" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

keymap("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase split size horizontally" })
keymap("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease split size horizontally" })
keymap("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Increase split size vertically" })
keymap("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Decrease split size vertically" })

-- Tabs
keymap("n", "<leader>tx", ":tabclose<CR>", { desc = "Close tab" })
keymap("n", "<leader>tn", ":tabn<CR>", { desc = "Next tab" })
keymap("n", "<leader>tp", ":tabp<CR>", { desc = "Previous tab" })

-- Increment Numbers
keymap("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap("n", "<leader>-", "<C-x>", { desc = "Decement number" })

-- Move Text In Visual Mode
keymap("v", "<", "<gv", { desc = "Move text in visual mode" })
keymap("x", "K", ":move '<-2<CR>gv-gv", { desc = "Move text in visual mode" })
keymap("v", ">", ">gv", { desc = "Move text in visual mode" })
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", { desc = "Move text in visual mode" })
keymap("v", "<A-j>", ":m .+1<CR>==", { desc = "Move text in visual mode" })
keymap("x", "J", ":move '>+1<CR>gv-gv", { desc = "Move text visual mode" })
keymap("v", "<A-k>", ":m .-2<CR>==", { desc = "Move text in visual mode" })
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", { desc = "Move text in visual mode" })

keymap("n", "<leader>md", ":set wrap<CR> <bar> :set linebreak<CR> <bar> :set spell<CR>", { desc = "Markdown Mode" }) -- Setup for writing with MD

-- Plugins
-- Nvim Tree
keymap("n", "<leader>ee", ":NvimTreeToggle<CR>", { desc = "Open Nvim Tree" })
keymap("n", "<leader>ef", ":NvimTreeFindFileToggle<CR>", { desc = "Open Nvim Tree on current file" })
keymap("n", "<leader>ec", ":NvimTreeCollapse<CR>", { desc = "Close Nvim Tree" })
keymap("n", "<leader>er", ":NvimTreeRefresh<CR>", { desc = "Refresh Nvim Tree" })

-- Fuzzy Finder
keymap("n", "<leader>ff", ':lua require("fzf-lua").files()<CR>', { desc = "Fzf search files" })
keymap("n", "<leader>fb", ':lua require("fzf-lua").buffers()<CR>', { desc = "Fzf search buffers" })
keymap("n", "<leader>fp", ':lua require("fzf-lua").grep_project()<CR>', { desc = "Fzf grep project" })
keymap("n", "<leader>fs", ':lua require("fzf-lua").grep_curbuf()<CR>', { desc = "Fzf grep current buffer" })

-- LSP
keymap("n", "gD", ':lua require("fzf-lua").lsp_document_diagnostics()<CR>', { desc = "Show file diagnostics" }) -- show  diagnostics for file
keymap("n", "gr", ':lua require("fzf-lua").lsp_references()<CR>', { desc = "Show LSP references" }) -- show definition, references
keymap("n", "gd", ':lua require("fzf-lua").lsp_definitions()<CR>', { desc = "Get LSP definitions" }) -- show lsp definitions
keymap("n", "gt", ':lua require("fzf-lua").lsp_typedefs()<CR>', { desc = "Get LSP type definitions" }) -- show lsp type definitions
keymap("n", "ca", ':lua require("fzf-lua").lsp_code_actions()<CR>', { desc = "Get code actions" }) -- see available code actions, in visual mode will apply to selection
