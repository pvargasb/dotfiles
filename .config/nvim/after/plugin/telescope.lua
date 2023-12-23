require("telescope").load_extension("refactoring")
require("telescope").load_extension("git_worktree")
require("telescope").setup({
	defaults = {
		layout_strategy = "center",
		layout_config = {
			width = 0.5,
			anchor = "S",
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
			"find_files",
			"any",
		},
	})
end)

local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")
vim.keymap.set("n", "<leader>t;", function()
	builtin.find_files({
		find_command = {
			"find_files",
			"git",
		},
		attach_mappings = function(prompt_bufnr, _)
			actions.select_default:replace(function()
				actions.close(prompt_bufnr)
				builtin.git_files({ cwd = action_state.get_selected_entry()[1] })
			end)
			return true
		end,
	})
end)
