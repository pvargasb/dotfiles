local builtin = require("telescope.builtin")
local cmp = require("cmp")
local luasnip = require("luasnip")
local lsp = require("lsp-zero").preset({
	name = "minimal",
	set_lsp_keymaps = true,
	manage_nvim_cmp = true,
	suggest_lsp_servers = false,
})

lsp.ensure_installed({
	"lua_ls",
})

lsp.setup_nvim_cmp({
	mapping = lsp.defaults.cmp_mappings({
		["<C-Space>"] = cmp.mapping.complete(),
		["<Tab>"] = cmp.mapping.confirm(),
		["<CR>"] = vim.NIL,
		["<C-y>"] = vim.NIL,
	}),
})

lsp.set_preferences({
	sign_icons = {},
})

lsp.on_attach(function(_, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "]g", vim.diagnostic.goto_next, opts)
	vim.keymap.set("n", "[g", vim.diagnostic.goto_prev, opts)
	vim.keymap.set("n", "gd", builtin.lsp_definitions, opts)
	vim.keymap.set("n", "gy", builtin.lsp_type_definitions, opts)
	vim.keymap.set("n", "gi", builtin.lsp_implementations, opts)
	vim.keymap.set("n", "gr", builtin.lsp_references, opts)

	vim.keymap.set("n", "<leader>ed", builtin.diagnostics, opts)
	vim.keymap.set("n", "<leader>et", builtin.lsp_document_symbols, opts)
	vim.keymap.set("n", "<leader>es", builtin.lsp_dynamic_workspace_symbols, opts)

	vim.keymap.set("n", "<leader>=", vim.cmd.Format, opts)
	vim.keymap.set("n", "<leader>ea", vim.lsp.buf.code_action, opts)
	vim.keymap.set("n", "<leader>er", vim.lsp.buf.rename, opts)
	vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

lsp.nvim_workspace() -- (Optional) Configure lua language server for neovim
lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
	update_in_insert = true,
})

vim.keymap.set({ "n", "i" }, "<F4>", "<nop>")
vim.keymap.set({ "n", "i" }, "<S-F4>", "<nop>")

vim.keymap.set("i", "<F4>", function()
	luasnip.jump(1)
end)
vim.keymap.set("i", "<S-F4>", function()
	luasnip.jump(-1)
end)
