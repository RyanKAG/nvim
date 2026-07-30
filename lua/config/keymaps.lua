vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", {
	desc = "Save file",
})

vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", {
	desc = "Quit",
})

vim.keymap.set("n", "<leader>pv", "<cmd>Ex<CR>", {
	desc = "Explorer",
})
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", {
	desc = "Next buffer",
})

vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>", {
	desc = "Previous buffer",
})

vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", {
	desc = "Delete buffer",
})

vim.keymap.set("n", "<leader>bl", "<cmd>ls<CR>", {
	desc = "List buffers",
})

vim.keymap.set("n", "<C-d>", "<C-d>zz", {
	desc = "Half page down and center",
})

vim.keymap.set("n", "<C-u>", "<C-u>zz", {
	desc = "Half page up and center",
})
vim.keymap.set("n", "<leader>mr", ":RenderMarkdown toggle<CR>", {
	desc = "Toggle markdown render",
})
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", {
	desc = "Clear search highlight",
})
vim.keymap.set("n", "n", "nzz", {
	desc = "Next search result and center",
})

vim.keymap.set("n", "N", "Nzz", {
	desc = "Previous search result and center",
})
