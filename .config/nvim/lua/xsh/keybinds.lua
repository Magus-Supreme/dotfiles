local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local bind = vim.api.nvim_set_keymap

--Remap space as leader key
bind("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
bind("n", "<C-h>", "<C-w>h", opts)
bind("n", "<C-j>", "<C-w>j", opts)
bind("n", "<C-k>", "<C-w>k", opts)
bind("n", "<C-l>", "<C-w>l", opts)

-- Navigate buffers
bind("n", "<leader>bn", ":bnext<CR>", opts)
bind("n", "<leader>bb", ":bprevious<CR>", opts)

-- Insert --
bind("i", "qi", "<ESC>", opts)
bind("i", "<C-h>", "<Left>", opts)
bind("i", "<C-l>", "<Right>", opts)

-- Visual --
-- Stay in indent mode
bind("v", "<", "<gv", opts)
bind("v", ">", ">gv", opts)

-- Move text up and down
bind("v", "<A-j>", ":m .+1<CR>==", opts)
bind("v", "<A-k>", ":m .-2<CR>==", opts)
bind("v", "p", '"_dP', opts)

bind("i", "qv", "<ESC>", opts)

-- Visual Block --
-- Move text up and down
bind("x", "J", ":move '>+1<CR>gv-gv", opts)
bind("x", "K", ":move '<-2<CR>gv-gv", opts)
bind("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
bind("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- vim-smoothie

vim.cmd([[
	nnoremap <C-j> <cmd>call smoothie#do("\<C-D>") <CR>
	vnoremap <C-j> <cmd>call smoothie#do("\<C-D>") <CR>
	
	nnoremap <C-k> <cmd>call smoothie#do("\<C-U>") <CR>
	vnoremap <C-k> <cmd>call smoothie#do("\<C-U>") <CR>
	]])

