return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdate",
        dependencies = { "windwp/nvim-ts-autotag" },

        config = function()
            -- configure treesitter
            require("nvim-treesitter.configs").setup({
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
                autotag = { enable = true },
            })
        end,
    },
}
