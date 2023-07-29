vim.g.floaterm_title = "terminal"
vim.g.floaterm_wintype = "split"
vim.g.floaterm_opener = "vsplit"
vim.g.floaterm_height = 0.6
vim.g.floaterm_autoclose = 2

vim.keymap.set("t", "<C-o>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-t>", "<C-\\><C-n>:FloatermToggle<CR>", { silent = true })
vim.keymap.set("t", "<C-p>", "<C-\\><C-n>:FloatermPrev<CR>", { silent = true })
vim.keymap.set("t", "<C-n>", "<C-\\><C-n>:FloatermNext<CR>", { silent = true })
vim.keymap.set("n", "<C-t>", vim.cmd.FloatermToggle, { silent = true })

vim.keymap.set("n", "<leader>E", ":FloatermNew lf<CR>", { silent = true })
