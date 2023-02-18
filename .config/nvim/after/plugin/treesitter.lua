require "nvim-treesitter.configs".setup {
    ensure_installed = { "c", "lua", "vim", "help" },
    sync_install = false,
    auto_install = true,
    ignore_install = {},

    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
    },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<C-s>",
            node_incremental = "<C-s>"
        }
    },

    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["aa"] = "@parameter.outer",
                ["ia"] = "@parameter.inner",
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner"
            }
        }
    },

    autotag = {
        enable = true
    },

    matchup = {
        enable = true,
        disable_virtual_text = true
    }
}
