return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
        "jay-babu/mason-null-ls.nvim",
    },
    config = function()
        require("mason-null-ls").setup({
            ensure_installed = { "stylua", "rubocop", "black", "isort", "prettier" },
        })

        -- to setup format on write
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

        local null_ls = require("null-ls")
        require("null-ls").setup({
            sources = {
                require("none-ls.diagnostics.eslint_d"),
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.erb_lint,
                null_ls.builtins.diagnostics.rubocop,
                null_ls.builtins.formatting.rubocop,
                null_ls.builtins.diagnostics.pylint,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
            },

            -- format on write
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({
                                bufnr = bufnr,
                                filter = function(client)
                                    return client.name == "null-ls"
                                end,
                            })
                        end,
                    })
                end
            end,
        })
        vim.keymap.set("n", "<leader>mp", vim.lsp.buf.format, {})
    end,
}
