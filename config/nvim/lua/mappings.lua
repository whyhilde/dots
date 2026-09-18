vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


local map = vim.keymap.set

-- buffers
map("n", "<c-q>", "<cmd>qa!<cr>")
map("n", "<c-s>", "<cmd>w<cr>")

-- better jk
map("n", "j", "gj")
map("n", "k", "gk")

-- move between words
map("n", "H", "b")
map("n", "L", "w")
map("n", "J", "^")
map("n", "K", "$")

-- move between panes
map("n", "<c-h>", "<c-w>h")
map("n", "<c-j>", "<c-w>j")
map("n", "<c-k>", "<c-w>k")
map("n", "<c-l>", "<c-w>l")

-- move between search results
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- disable highlight after search
map("n", "<esc>", "<cmd>noh<cr>")

-- quit insert mode
map("i", "jj", "<esc>")
