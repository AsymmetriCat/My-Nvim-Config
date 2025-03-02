local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

-- Insert --
map("i", "jk", "<ESC>", opts)
map("i", "<C-y>", "<ESC>I", opts)
map("i", "<C-o>", "<ESC>A", opts)
------------

-- Normal --
map("n", "<leader>sv", "<C-w>v", opts)
map("n", "<leader>sh", "<C-w>h", opts)
map("n", "<leader>nh", ":nohl<CR>", opts)
map("n", "<leader>t", ":sp | terminal<CR>", opts)
map("n", "<leader>vt", ":vsp | terminal<CR>", opts)
map("n", "<leader>ww", "<C-w>W", opts)
map("n", "<leader>h", "<C-w>h", opts)
map("n", "<leader>j", "<C-w>j", opts)
map("n", "<leader>k", "<C-w>k", opts)
map("n", "<leader>l", "<C-w>l", opts)
map("n", "<leader>sc", "<C-w>c", opts)
map("n", "<leader>so", "<C-w>o", opts)
map("n", "Q", ":q!<enter>", opts)
map("n", "W", ":w ", opts)
map("n", "wq", ":wq<enter>", opts)
map("n", "<A-k>", [[<cmd>resize +2<CR>]], opts)
map("n", "<A-j>", [[<cmd>resize -2<CR>]], opts)
map("n", "<A-h>", [[<cmd>vertical resize +2<CR>]], opts)
map("n", "<A-l>", [[<cmd>vertical resize -2<CR>]], opts)
map("n", "dL", "d$", opts)
map("n", "dH", "d0", opts)
------------

-- Visual --
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)
------------
