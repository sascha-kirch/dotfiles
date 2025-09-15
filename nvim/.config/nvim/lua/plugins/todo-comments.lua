-- TODO: this is a todo
-- over multiple lines!!!

-- normal comment

-- HACK: thats hacky
-- WARN: caution here
-- PERF: too sloooooow
-- NOTE: a little note
-- TEST: just for testing
-- FIX: need to fix this one!
-- BUG: oooh a bug!

return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = true },
    config = function()
        local todo_comments = require("todo-comments")
        todo_comments.setup({})

        ------------------
        -- Default keymaps
        ------------------

        vim.keymap.set("n", "]t", function()
            todo_comments.jump_next()
        end, { desc = "Next todo comment" })

        vim.keymap.set("n", "[t", function()
            todo_comments.jump_prev()
        end, { desc = "Previous todo comment" })

        -- You can also specify a list of valid jump keywords
        -- vim.keymap.set("n", "]t", function()
        --     require("todo-comments").jump_next({keywords = { "ERROR", "WARNING" }})
        -- end, { desc = "Next error/warning todo comment" }) 

        -----------------
        -- custom keymaps
        -----------------

        vim.keymap.set("n", "<leader>tl","<cmd>TodoQuickFix<CR>" , {desc="Show the [t]odo [l]ist"})
        vim.keymap.set("n", "<leader>tf","<cmd>TodoTelescope<CR>" , {desc="Search todo list with telescope."})
    end
}
