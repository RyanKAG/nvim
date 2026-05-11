return {
    {
        "mason-org/mason.nvim",

        config = function()
            require("mason").setup()
        end,
    },

    {
        "mason-org/mason-lspconfig.nvim",

        dependencies = {
            "mason-org/mason.nvim",
        },

        opts = {
            ensure_installed = {
                -- Python
                "pyright",

                -- C / C++
                "clangd",

                -- Rust
                "rust_analyzer",
            },
        },
    },

    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",

        dependencies = {
            "mason-org/mason.nvim",
        },

        opts = {
            ensure_installed = {
                -- Python
                "ruff",
                "debugpy",

                -- C / C++
                "clang-format",
                "codelldb",

            },
        },
    },
}
