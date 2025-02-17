-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- set leader to space-bar
keymap.set("n", "<leader><leader>", vim.cmd.Ex)

-- auto-correct mistyped commands
vim.cmd("command! W w")
vim.cmd("command! Q q")

-- quit faster with <leader>x
vim.api.nvim_set_keymap("n", "<leader>x", "<cmd>:q<CR>", { noremap = true, silent = true })

-- move half the page vertically while keeping the cursor in the middle
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- keeps searches in the middle
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- move text up & down on visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- use control C-c to enter nomal mode
keymap.set("i", "<C-c>", "<Esc>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- next buffer and previous buffer
keymap.set("n", "<leader>k", vim.cmd.bn)
keymap.set("n", "<leader>j", vim.cmd.bp)

-- window management (close with :q or <leader>x)
keymap.set("n", "<leader>v", "<C-w>v")             -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s")            -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=")            -- make split windows equal width & height

keymap.set("n", "<leader>nt", "<cmd>tabnew<CR>")   -- open new tab
keymap.set("n", "<leader>n", "<cmd>tabn<CR>")      --  go to next tab
keymap.set("n", "<leader>p", "<cmd>tabp<CR>")      --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>") --  move current buffer to new tab

-- snippets
keymap.set("n", "'html", ":-1read $HOME/.snippets/.boilerplate.html<CR>5jf>a", { noremap = true })
