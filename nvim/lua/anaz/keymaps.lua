local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- From the old config
-- local keymapOld = vim.keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- From the current config
-- New tab
keymap("n", "TE", ":tabedit<Return>", term_opts)
-- Need to find keymap for closing tabedit windows and split panes --
-- Split window
keymap("n", "TS", ":split<Return>", term_opts)
keymap("n", "TV", ":vsplit<Return>", term_opts)

-- Normal --
-- Better window navigation
keymap("n", "TH", "<C-w>h", opts)
keymap("n", "TJ", "<C-w>j", opts)
keymap("n", "TK", "<C-w>k", opts)
keymap("n", "TL", "<C-w>l", opts)
-- Resize with arrows
keymap("n", "<A-c-k>", ":resize +2<CR>", opts) -- Changed this 3/18 08:00
keymap("n", "<A-c-j>", ":resize -2<CR>", opts)
keymap("n", "<A-c-l>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-c-h>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<Tab>", ":bnext<CR>", opts)
keymap("n", "<S-Tab>", ":bprevious<CR>", opts)
keymap("n", "<Leader>w", ":Bdelete<CR>", opts)


-- Insert --
-- Press JJ fast to exit insert mode
keymap("i", "JJ", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
-- keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- From the current config

-- Do not yank with x
keymap("n", "x", '"_x', opts)

-- Increment/decrement
keymap("n", "+", "<C-a>", opts)
keymap("n", "_", "<C-x>", opts)
-- Select all
keymap("n", "<C-a>", "gg<S-v>G", opts)
keymap("n", "<Leader>a", ":%y<CR>", opts)

--- Remove the highlights after search
keymap("n", "<CR>", ":noh<CR><ESC>", opts)

--- Oen and close Nvim-Tree
keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", opts)

--- FLOATERM ---
--- Open/close floaterm
keymap("n", "<Leader>g", ":FloatermNew lazygit<CR>", opts)
--- Open projects

--- Clang & Make Compiling
keymap("n", "<Leader><Leader>cr", ":FloatermNew --autoclose=0 clang % -o %< && ./%<<CR>", opts)
keymap("n", "<Leader><Leader>cs", ":FloatermNew --autoclose=0 clang % -o %< -lcs50 && ./%<<CR>", opts)
keymap("n", "<Leader><Leader>s", ":FloatermNew --silent --name=server live-server --cors --open=%<CR>", opts)
keymap("n", "<Leader><Leader>ks", ":FloatermKill server<CR>", opts)

keymap("n", "<Leader>P", ":Telescope projects<CR>JJ", opts)
--- greatest remap ever from ThePrimegan
keymap("n", "<Leader>p", "\"_dP", opts)
keymap("v", "<Leader>p", "\"_dP", opts)
keymap("x", "<Leader>p", "\"_dP", opts)
