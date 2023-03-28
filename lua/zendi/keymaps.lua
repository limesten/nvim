local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
-- keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Normal Mode --
keymap("n", "<leader>pv", ":Ex<cr>", opts)
keymap("n", "J", "mzJ`z", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<leader>y", "\"+y", opts)

-- tab navigation
keymap("n", "nt", ":tabnew<cr>", opts)
keymap("n", "<leader>d", "gt", opts)
keymap("n", "<leader>a", "gT", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("v", "<leader>y", "\"+y", opts)

-- Move text up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Terminal Mode --
keymap("t", "<ESC>", "<C-\\><C-n>", term_opts)

keymap("x", "<leader>p", [["_dP]], opts)

