return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                ensure_installed = { "c", "cpp", "vim", "lua", "markdown", "python", "rust", "bash" },
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        after = "nvim-treesitter",
        requires = "nvim-treesitter/nvim-treesitter",
        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        lookbehind = true,

                        keymaps = {
                            -- You can use the capture groups defined in textobjects.scm
                            ["ab"] = "@block.outer",
                            ["ib"] = "@block.inner",

                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",

                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",

                            ["ai"] = "@conditional.outer",
                            ["ii"] = "@conditional.inner",

                            ["al"] = "@loop.outer",
                            ["il"] = "@loop.inner",

                            ["as"] = "@local.scope",
                        },
                        selection_modes = { ["default"] = "V"}, -- linewise 
                    },
                },
            })
        end,
    },
}
