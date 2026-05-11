return {
    "neovim/nvim-lspconfig",

    dependencies = {
        "mason-org/mason.nvim",
        "mason-org/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
    },

    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        vim.lsp.config("pyright", {
            capabilities = capabilities,

            settings = {
                python = {
                    analysis = {
                        typeCheckingMode = "basic",
                        autoSearchPaths = true,
                        useLibraryCodeForTypes = true,
                    },
                },
            },
        })

        vim.lsp.config("clangd", {
            capabilities = capabilities,

            cmd = {
                "clangd",
                "--background-index",
                "--clang-tidy",
                "--completion-style=detailed",
                "--header-insertion=iwyu",
            },
        })

        vim.lsp.config("rust_analyzer", {
            capabilities = capabilities,

            settings = {
                ["rust-analyzer"] = {
                    cargo = {
                        allFeatures = true,
                    },
                    check = {
                        command = "clippy",
                    },
                },
            },
        })

        vim.lsp.enable({
            "pyright",
            "clangd",
            "rust_analyzer",
        })

        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(event)
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
                    buffer = event.buf,
                    desc = "Go to definition",
                })

                vim.keymap.set("n", "K", vim.lsp.buf.hover, {
                    buffer = event.buf,
                    desc = "Hover documentation",
                })

                vim.keymap.set("n", "gr", vim.lsp.buf.references, {
                    buffer = event.buf,
                    desc = "Go to references",
                })

                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {
                    buffer = event.buf,
                    desc = "Rename symbol",
                })

                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {
                    buffer = event.buf,
                    desc = "Code action",
                })

                vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {
                    buffer = event.buf,
                    desc = "Show diagnostic",
                })

                vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {
                    buffer = event.buf,
                    desc = "Previous diagnostic",
                })

                vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {
                    buffer = event.buf,
                    desc = "Next diagnostic",
                })
            end,
        })
    end,
}
