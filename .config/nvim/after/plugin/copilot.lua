vim.keymap.set('i', '<C-j>', 'copilot#Accept("")', {
    expr = true,
    replace_keycodes = false
})
vim.g.copilot_no_tab_map = true
