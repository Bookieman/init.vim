-- MAPPINGS

-- This import contains the register_keymap function
local map = vim.keymap.set

-- Options for normal commands & terminal commands
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Setting space as leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Mapping "jj" for ESC
map("i", "jj", "<ESC>", opts)

-- Mapping fast travel keys
map({"n", "v"}, "H", "b", opts)
map({"n", "v"}, "J", "5j", opts)
map({"n", "v"}, "K", "5k", opts)
map({"n", "v"}, "L", "e", opts)
map({"n", "v"}, "<C-h>", "^", opts)
map({"n", "v"}, "<C-j>", "20j", opts)
map({"n", "v"}, "<C-k>", "20k", opts)
map({"n", "v"}, "<C-l>", "$", opts)

-- Delete words with alt + backspace
map("n", "<A-BS>", "db<del>", opts)
map("i", "<A-BS>", "<C-w>", opts)

-- Mapping <super>yy to 'yank without newline'
map("n", "<leader>yy", "^v$hy", opts)
map("n", "<leader>dd", "Vdo<esc>", opts)

-- New line keys
map("n", "<leader>o", "o<Esc>", opts)
map("n", "<leader>O", "O<Esc>", opts)

-- Panes
map("n", "<leader>h", ":wincmd h<cr>", opts)
map("n", "<leader>j", ":wincmd j<cr>", opts)
map("n", "<leader>k", ":wincmd k<cr>", opts)
map("n", "<leader>l", ":wincmd l<cr>", opts)
map("n", "<Left>", ":wincmd h<cr>", opts)
map("n", "<Down>", ":wincmd j<cr>", opts)
map("n", "<Up>", ":wincmd k<cr>", opts)
map("n", "<Right>", ":wincmd l<cr>", opts)
map("n", "<leader>w;", ":vnew<cr>")
map("n", "<leader>w,", ":new<cr>")
map("n", "<leader>wt", "<C-w>T")


-- Remove highlights
map("n", "§", "<cmd>noh<CR>", { desc = "General Clear highlights" })

map("n", "<leader>rc", ":source ~/.config/nvim/init.lua", opts)

-- Tagbar toggle
map("n", "<leader>,", ":TagbarToggle<CR>", opts)

-- Tabs
map("n", "<leader>tn", ":enew<CR>", opts)
map('n', '<leader>q', ':bdelete<CR>')
map("n", "<tab>", ":bnext<CR>", opts)
map("n", "<S-tab>", ":bprev<CR>", opts)
