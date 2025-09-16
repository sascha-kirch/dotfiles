return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()

        local ntree = require("neo-tree")

        ntree.setup({
            event_handlers = {
                {
                    event = "file_opened",
                    handler =function()
                        vim.cmd.echo("'file_opened'")
                        vim.cmd("Neotree close")

                    end
                },
            },
            filesystem = {
                filtered_items = {

                    visible = false, -- when true, they will just be displayed differently than normal items
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_hidden = true, -- only works on Windows for hidden files/directories
                    hide_by_name = {
                        ".DS_Store",
                        "thumbs.db",
                        --"node_modules",
                    },
                    hide_by_pattern = {
                        --"*.meta",
                        --"*/src/*/tsconfig.json",
                    },
                    always_show = { -- remains visible even if other settings would normally hide it
                        ".gitignore",
                    },
                    always_show_by_pattern = { -- uses glob style patterns
                        --".env*",
                    },
                    never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
                        ".DS_Store",
                        "thumbs.db",
                        "__pycache__",
                    },
                    never_show_by_pattern = { -- uses glob style patterns
                        --".null-ls_*",
                    },
                }
            }

        })

        -- keymaps
        vim.keymap.set("n", "<C-n>", ":Neotree reveal filesystem left<CR>")
    end,
}
