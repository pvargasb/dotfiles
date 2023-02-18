require("formatter").setup({
	logging = false,

	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		python = {
			require("formatter.filetypes.python").black,
		},
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

local augroup = vim.api.nvim_create_augroup("formatter", {})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	group = augroup,
	pattern = "*",
	command = [[FormatWrite]],
})
