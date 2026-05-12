return {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    keys = {
        {
            "<leader>pff",
            function()
                require("telescope.builtin").find_files()
            end,
            desc = "Find files",
        },
        {
            "<leader>pfg",
            function()
                require("telescope.builtin").live_grep()
            end,
            desc = "Live grep",
        },
        {
            "<leader>fb",
            function()
                require("telescope.builtin").buffers()
            end,
            desc = "Find buffers",
        },
        {
            "<leader>pfh",
            function()
                require("telescope.builtin").help_tags()
            end,
            desc = "Help tags",
        },
        {
            "<leader>pfr",
            function()
                require("telescope.builtin").oldfiles()
            end,
            desc = "Recent files",
        },
        -- Git
        {
            "<leader>pgf",
            function()
                require("telescope.builtin").git_files()
            end,
            desc = "Git files",
        },
        {
            "<leader>pgs",
            function()
                require("telescope.builtin").git_status()
            end,
            desc = "Git status",
        },
        {
            "<leader>pgc",
            function()
                require("telescope.builtin").git_commits()
            end,
            desc = "Git commits",
        },
        {
            "<leader>pgb",
            function()
                require("telescope.builtin").git_branches()
            end,
            desc = "Git branches",
        },
        {
            "<leader>pgC",
            function()
                require("telescope.builtin").git_bcommits()
            end,
            desc = "Git buffer commits",
        },
        {
            "<leader>pgst",
            function()
                require("telescope.builtin").git_stash()
            end,
            desc = "Git stash",
        },
    },
    config = function()
        require("telescope").setup({
            defaults = {
                file_ignore_patterns = {
                    "%.venv/",
                    "venv/",
                    "__pycache__/",
                    "node_modules/",
                },
            },

        })
    end,
}
