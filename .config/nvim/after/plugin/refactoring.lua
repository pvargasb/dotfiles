vim.api.nvim_set_keymap(
	"x",
	"<leader>er",
	[[<Esc><cmd>silent! lua require('telescope').extensions.refactoring.refactors()<CR>]],
	{ noremap = true }
)
