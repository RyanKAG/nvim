return {
  "mfussenegger/nvim-lint",

  event = {
    "BufReadPre",
    "BufNewFile",
  },

  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      python = {
        "ruff",
      },

      c = {
        "clangtidy",
      },

      cpp = {
        "clangtidy",
      },
    }

    vim.api.nvim_create_autocmd({
      "BufEnter",
      "BufWritePost",
      "InsertLeave",
    }, {
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>cl", function()
      lint.try_lint()
    end, {
      desc = "Run linter",
    })
  end,
}
