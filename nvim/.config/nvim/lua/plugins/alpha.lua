local logo = {
    [[                                                                       ]],
    [[                                                                       ]],
    [[                                                                       ]],
    [[                                                                       ]],
    [[                                                                     ]],
    [[       ████ ██████           █████      ██                     ]],
    [[      ███████████             █████                             ]],
    [[      █████████ ███████████████████ ███   ███████████   ]],
    [[     █████████  ███    █████████████ █████ ██████████████   ]],
    [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
    [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
    [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
    [[                                                                       ]],
    [[                                                                       ]],
    [[                                                                       ]],
}

local function footer()
    --local total_plugins = #vim.tbl_keys(packer_plugins)
    local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
    local version = vim.version()
    local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

    return datetime .. nvim_version_info
end

return {
    "goolord/alpha-nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = logo
        dashboard.section.buttons.val = {
            dashboard.button("e", "  New Buffer", ":tabnew<CR>"),
            dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
            dashboard.button("h", "  Recently opened files", ":Telescope oldfiles<CR>"),
            dashboard.button("r", "  Frecency/MRU", ":Telescope oldfiles<CR>"),
            dashboard.button("m", "󰮗  Word Finder", ":Telescope live_grep<CR>"),
            dashboard.button("l", "  Marks", ":Telescope marks<CR>"),
            dashboard.button("q", "  quit", ":q!<CR>"),
        }

        dashboard.section.footer.val = footer()
        dashboard.section.footer.opts.hl = "Constant"
        alpha.setup(dashboard.config)
    end,
}
