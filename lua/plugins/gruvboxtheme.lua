return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			overrides = {
				["@lsp.type.method"] = { bg = "#000000" },
				["@comment.lua"] = { bg = "#000000" },
				["@method.call.python"] = { bg = "#000000" },
				["@attribute.python"] = { bg = "#000000" },
			},
		})
		--test
		vim.cmd([[colorscheme gruvbox]])
	end,
	opts = ...,
}
