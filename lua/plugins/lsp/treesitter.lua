return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	lazy = false,

	config = function()
		local ts = require("nvim-treesitter")

		ts.install({
			"lua",
			"vim",
			"vimdoc",
			"bash",
			"json",
			"yaml",
			"toml",
			"markdown",
			"python",
			"c",
			"cpp",
			"cmake",
			"rust",
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"lua",
				"vim",
				"vimdoc",
				"bash",
				"json",
				"yaml",
				"toml",
				"markdown",
				"python",
				"c",
				"cpp",
				"cmake",
				"rust",
			},
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
