return {
  {
    "mfussenegger/nvim-dap",

    keys = {
      {
        "<F5>",
        function()
          require("dap").continue()
        end,
        desc = "Debug continue",
      },
      {
        "<F10>",
        function()
          require("dap").step_over()
        end,
        desc = "Debug step over",
      },
      {
        "<F11>",
        function()
          require("dap").step_into()
        end,
        desc = "Debug step into",
      },
      {
        "<F12>",
        function()
          require("dap").step_out()
        end,
        desc = "Debug step out",
      },
      {
        "<leader>db",
        function()
          require("dap").toggle_breakpoint()
        end,
        desc = "Toggle breakpoint",
      },
      {
        "<leader>dr",
        function()
          require("dap").repl.open()
        end,
        desc = "Debug REPL",
      },
    },

    config = function()
      local dap = require("dap")

      local codelldb_path = vim.fn.stdpath("data")
        .. "/mason/packages/codelldb/extension/adapter/codelldb"

      dap.adapters.codelldb = {
        type = "server",
        port = "${port}",
        executable = {
          command = codelldb_path,
          args = {
            "--port",
            "${port}",
          },
        },
      }

      dap.configurations.c = {
        {
          name = "Launch C executable",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
        },
      }

      dap.configurations.cpp = dap.configurations.c

      dap.configurations.rust = {
        {
          name = "Launch Rust executable",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
        },
      }
    end,
  },

  {
    "mfussenegger/nvim-dap-python",

    dependencies = {
      "mfussenegger/nvim-dap",
    },

    config = function()
      local debugpy_python = vim.fn.stdpath("data")
        .. "/mason/packages/debugpy/venv/bin/python"

      require("dap-python").setup(debugpy_python)

      vim.keymap.set("n", "<leader>dpr", function()
        require("dap-python").test_method()
      end, {
        desc = "Debug Python test method",
      })

      vim.keymap.set("n", "<leader>dpc", function()
        require("dap-python").test_class()
      end, {
        desc = "Debug Python test class",
      })
    end,
  },

  {
    "rcarriga/nvim-dap-ui",

    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },

    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end

      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end

      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      vim.keymap.set("n", "<leader>du", function()
        dapui.toggle()
      end, {
        desc = "Toggle debug UI",
      })
    end,
  },
}
