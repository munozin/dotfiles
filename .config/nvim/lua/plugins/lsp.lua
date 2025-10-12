return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"html",
					"cssls",
					"tailwindcss",
					"lua_ls",
					"ts_ls",
					"clangd",
					"gopls",
					"ruff",
					"ruby_lsp",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			vim.lsp.config('lua_ls', {})
			vim.lsp.config('html', {})
			vim.lsp.config('cssls', {})
			vim.lsp.config('tailwindcss', {})
			vim.lsp.config('ts_ls', {})
			vim.lsp.config('clangd', {})
			vim.lsp.config('gopls', {})
			vim.lsp.config('ruff', {})
			vim.lsp.config('ruby_lsp', {})

			-- lsp keymaps
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {})
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

			-- format on write
			vim.api.nvim_create_autocmd('LspAttach', {
				callback = function(args)
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					if not client then return end

					if client.supports_method("textDocument/formatting") then
						-- Format the current buffer on save
						vim.api.nvim_create_autocmd('BufWritePre', {
							buffer = args.buf,
							callback = function()
								vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
							end,
						})
					end
				end,
			})
		end,

	},
}
