
-- if inside vscode using the vscode-neovim extension, don't load plugins

-- Load settings and keymaps. Note that not all settings and keybindings are compatible with vscode
require("keymaps")
require("vim-options")
require("autocmds")

-- In vscode, we need to show the mode since the statusline is not visible all the time
vim.o.showmode = true

-- local vscode = require("vscode")
-- vscode.notify("Neovim is running inside VSCode", "info", { title = "vscode-neovim" })
