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
