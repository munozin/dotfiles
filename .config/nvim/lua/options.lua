local opt = vim.opt -- for conciseness

-- hide .DS_Store file on mac
vim.g.netrw_hide = 1 -- Enable hiding files
vim.g.netrw_list_hide = [[^\.\(DS_Store\)$,\~$]]

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true         -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2    -- tab width
opt.shiftwidth = 2 -- tab width on new line

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true  -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- persistent undotree with undo directory
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.undodir"

-- mac and wsl system clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- scroll page when cursor is 8 lines from top/bottom
opt.scrolloff = 8

-- scroll page when cursor is 8 spaces from left/right
vim.opt.sidescrolloff = 8

-- better terminal colors
opt.termguicolors = true

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
