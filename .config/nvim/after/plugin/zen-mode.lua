vim.keymap.set("n", "<leader>zz", function()
    require("zen-mode").setup {
        window = {
            width = 90,
            height = 0.9,
            options = {}
        },
    }
    require("zen-mode").toggle()

    vim.wo.wrap = false
    vim.wo.number = true
    vim.wo.rnu = true
end)
