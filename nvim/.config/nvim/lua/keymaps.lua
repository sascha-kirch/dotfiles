-- NOTE: See `:help vim.keymap.set()`

-----------
-- Search
-----------
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-----------
-- Terminal
-----------
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Open a small terminal at the bottom of the window
-- vim.keymap.set("n", "<leader>ö", function()
-- 	vim.cmd.vnew()
-- 	vim.cmd.term()
-- 	vim.cmd.windcmd("J")
-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- 	vim.api.nvim_win_set_height(0, 15)
-- end, { desc = "Open small terminal at the bottom of the window." })

-----------
-- Movement
-----------
-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move half page down and center cursor." })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move half page up and center cursor." })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Keeps the cursor at the current position when hitting 'J'."})
vim.keymap.set("n", "n", "nzzzv", { desc = "Move to next search result and center cursor." })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Move to previous search result and center cursor." })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Move selected text up 1 row."})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "Move selected text down 1 row."})

-----------
-- Windows
-----------
-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-----------
-- Quickfix
-----------
-- 'M' is the meta key => 'alt'
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>", { desc = "Move to next item in quickfix list." })
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>", { desc = "Move to previous item in quickfix list." })


-----------
-- Insertions
-----------
vim.keymap.set("i", ";;", "<C-o>A;", { desc = "In insert mode, jump to end of line and insert ';'" })
vim.keymap.set("n", "<leader>o", "o<ESC>k", { desc = "Add an empty line bellow current line" })
vim.keymap.set("n", "<leader>O", "O<ESC>j", { desc = "Add an empty line above current line" })



-----------
-- Clipboard
-----------
vim.keymap.set("x", "<leader>p", "\"_dP", {desc = "Keep yanked data when pasting over selection."})

-----------
-- NoPs
-----------
vim.keymap.set("n", "Q", "<nop>")


-----------
-- Terminal
-----------
vim.keymap.set("n", "<space>ter", function()
    vim.cmd.vnew()
    vim.cmd.term()
    vim.cmd.wincmd("J")
    vim.api.nvim_win_set_height(0, 10)
end, {desc="Open small terminal at the bottom of the buffer"})
