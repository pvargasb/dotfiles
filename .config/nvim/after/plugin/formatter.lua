require("formatter").setup({
	logging = false,

	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		rust = {
			require("formatter.filetypes.rust").rustfmt,
		},
		python = {
			require("formatter.filetypes.python").black,
		},
		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},
		javascriptreact = {
			require("formatter.filetypes.javascriptreact").prettier,
		},
		typescript = {
			require("formatter.filetypes.typescript").prettier,
		},
		typescriptreact = {
			require("formatter.filetypes.typescriptreact").prettier,
		},
		markdown = {
			require("formatter.filetypes.markdown").prettier,
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
