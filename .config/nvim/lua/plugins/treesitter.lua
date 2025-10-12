return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			-- configure treesitter
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				highlight = {
					enable = true,
					inject = {
						enable = true,
					},
				},
			})
		end,
	},
}
