require("telescope").setup({
	defaults = {
		layout_config = {
			width = 0.5,
		},
		mappings = {
			i = {
				["<C-t>"] = require("telescope.actions.layout").toggle_preview,
			},
		},
		preview = {
			hide_on_startup = true,
		},
	},
	pickers = {
		find_files = {
			no_ignore = true,
		},
	},
})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>b", builtin.buffers)
vim.keymap.set("n", "<leader>tp", builtin.git_files)
vim.keymap.set("n", "<leader>F", builtin.live_grep)
vim.keymap.set("x", "<leader>F", builtin.grep_string)
vim.keymap.set("n", "<leader>to", builtin.oldfiles)
vim.keymap.set("n", "<leader>tx", builtin.commands)
vim.keymap.set("n", "<leader>h", builtin.command_history)

vim.keymap.set("n", "<leader>f", function()
	builtin.find_files({
		find_command = {
			"fd",
			"--type",
			"f",
			"-E",
			"node_modules",
			"-E",
			"build",
			"-E",
			"dist",
			"-E",
			"target",
			"-E",
			".local",
			"-E",
			".cache",
			".",
		},
	})
end)

vim.keymap.set("n", "<leader>t;", function()
	builtin.find_files({
		find_command = {
			"fd",
			"--hidden",
			"-E",
			".local",
			"-E",
			".cache",
			"-E",
			"node_modules",
			"-E",
			"build",
			"-E",
			"dist",
			"-E",
			"target",
			"--glob",
			"*.git",
			".",
		},
	})
end)
