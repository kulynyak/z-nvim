-- Shorten function name
local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

--Remap space as leader key
keymap('', '<space>', '<nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Fast saving
keymap('n', '<leader>w', ':w<cr>', opts)
keymap('i', '<leader>w', '<c-c>:w<cr>', opts)

-- Normal --
-- Nvimtree
-- keymap('n', '<leader>e', ':Lex 30<cr>', opts)
-- keymap('n', '<leader>e', ':NvimTreeToggle<cr>', opts)

-- Clear search highlighting
-- keymap('n', '<leader>h', ':nohl<cr>', opts)

-- Better window navigation
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)

-- Resize with arrows
keymap('n', '<a-up>', ':resize -2<cr>', opts)
keymap('n', '<a-down>', ':resize +2<cr>', opts)
keymap('n', '<a-left>', ':vertical resize -2<cr>', opts)
keymap('n', '<a-right>', ':vertical resize +2<cr>', opts)

-- Navigate buffers
keymap('n', '<s-l>', ':bnext<cr>', opts)
keymap('n', '<s-h>', ':bprevious<cr>', opts)

-- Move text up and down
keymap('n', '<a-j>', '<esc>:m .+1<cr>==gi<esc>', opts)
keymap('n', '<a-k>', '<esc>:m .-2<cr>==gi<esc>', opts)

-- Telescope --
-- keymap('n', '<leader>fx', "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
-- keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
-- keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
-- keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
-- keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)

-- Comment --
keymap('n', 'gcc', '<cmd>lua require("Comment.api").call("toggle_current_linewise_op")<cr>g@$', opts)
keymap('n', 'gcb', '<cmd>lua require("Comment.api").call("toggle_current_blockwise_op")<cr>g@$', opts)

-- Insert --
-- Press jk fast to enter Normal mode
keymap('i', 'jk', '<esc>', opts)
-- Press kj fast to enter Normal mode
keymap('i', 'kj', '<esc>', opts)
-- Press kk fast to enter Normal mode
keymap('i', 'kk', '<esc>', opts)
-- Press jj fast to enter Normal mode
keymap('i', 'jj', '<esc>', opts)

-- Basic autopairs
-- keymap('i', '`', '``<left>', opts)
-- keymap('i', "'", "''<left>", opts)
-- keymap('i', '"', '""<left>', opts)
-- keymap('i', '(', '()<left>', opts)
-- keymap('i', '[', '[]<left>', opts)
-- keymap('i', '{', '{}<left>', opts)
-- keymap('i', '{<cr>', '{<cr}<esc>0', opts)
-- keymap('i', '{;<cr>', '{<cr};<esc>0', opts)

-- Visual --
-- Stay in indent mode during indent
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Move text up and down
keymap('v', '<a-j>', ':m .+1<cr>==', opts)
keymap('v', '<a-k>', ':m .-2<cr>==', opts)
keymap('v', 'p', '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap('x', 'J', ":move '>+1<cr>gv-gv", opts)
keymap('x', 'K', ":move '<-2<cr>gv-gv", opts)
keymap('x', '<a-j>', ":move '>+1<cr>gv-gv", opts)
keymap('x', '<a-k>', ":move '<-2<cr>gv-gv", opts)

-- Comment --
keymap('x', 'gcc', '<esc><cmd>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<cr>', opts)
keymap('x', 'gcb', '<esc><cmd>lua require("Comment.api").toggle_blockwise_op(vim.fn.visualmode())<cr>', opts)

-- Terminal --
-- Better terminal navigation
-- local term_opts = { silent = true }
-- keymap('t', '<c-h>', '<c-\\><c-N><c-w>h', term_opts)
-- keymap('t', '<c-j>', '<c-\\><c-N><c-w>j', term_opts)
-- keymap('t', '<c-k>', '<c-\\><c-N><c-w>k', term_opts)
-- keymap('t', '<c-l>', '<c-\\><c-N><c-w>l', term_opts)
