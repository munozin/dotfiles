return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
	},
	config = function()
		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				file_ignore_patterns = {
					"node_modules",
				},
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {})
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", {})
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", {})
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", {})
	end,
}
