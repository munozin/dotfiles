-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- 101's & W's
keymap.set("n", "<leader><leader>", vim.cmd.Ex)
vim.api.nvim_set_keymap("n", "<leader>fh", ":edit ~/", { noremap = true, silent = false })
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

-- use control C-c to enter nomal mode when in insert mode
keymap.set("i", "<C-c>", "<Esc>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- buffer next and buffer previous
keymap.set("n", "<leader>k", vim.cmd.bn)
keymap.set("n", "<leader>j", vim.cmd.bp)

-- window management
keymap.set("n", "<leader>v", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height

keymap.set("n", "<leader>nt", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>n", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>p", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- snippets
keymap.set("n", "'html", ":-1read $HOME/.snippets/.boilerplate.html<CR>5jf>a", { noremap = true })
