require("me.packer")
require("me.remaps")
require("me.sets")


local augroup = vim.api.nvim_create_augroup("base", {})

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
    group = augroup,
    pattern = "*",
    command = [[:silent! !]]
})

vim.api.nvim_create_autocmd({ "FileType" }, {
    group = augroup,
    pattern = "*",
    command = [[setlocal formatoptions -=ro]]
})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    group = augroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.api.nvim_create_user_command("SudoW", ":w !sudo tee %", {})
