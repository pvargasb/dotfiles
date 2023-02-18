vim.g.floaterm_title = "terminal"
vim.g.floaterm_wintype = "split"
vim.g.floaterm_height = 0.4

vim.keymap.set("t", "<C-o>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-t>", "<C-\\><C-n>:FloatermToggle<CR>", { silent = true })
vim.keymap.set("n", "<C-t>", ":FloatermToggle<CR>", { silent = true })
