return {
  "stevearc/conform.nvim",

  event = {
    "BufWritePre",
  },

  opts = {
    formatters_by_ft = {
      python = {
        "ruff_format",
        "ruff_fix",
      },

      c = {
        "clang_format",
      },

      cpp = {
        "clang_format",
      },

      rust = {
        "rustfmt",
      },
    },

    format_on_save = {
      timeout_ms = 1000,
      lsp_fallback = true,
    },
  },

  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({
          async = true,
          lsp_fallback = true,
        })
      end,
      desc = "Format file",
    },
  },
}
