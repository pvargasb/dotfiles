vim.api.nvim_set_keymap(
	"x",
	"<leader>er",
	[[<Esc><cmd>silent! lua require('telescope').extensions.refactoring.refactors()<CR>]],
	{ noremap = true }
)

vim.keymap.set("n", "<leader>ep", function()
	require("refactoring").debug.printf()
end)

vim.keymap.set("x", "<leader>ep", function()
	require("refactoring").debug.print_var()
end)

vim.keymap.set("n", "<leader>ec", function()
	require("refactoring").debug.cleanup({})
end)
