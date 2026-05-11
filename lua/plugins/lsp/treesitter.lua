return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
        require("nvim-treesitter").setup({
            ensure_installed = {
                -- Core
                "lua",
                "vim",
                "vimdoc",
                "bash",
                "json",
                "yaml",
                "toml",
                "markdown",

                -- Python
                "python",

                -- C / C++
                "c",
                "cpp",
                "cmake",

                -- Rust
                "rust",
            },

            highlight = {
                enable = true,
            },

            indent = {
                enable = true,
            },
        })
    end,
}
