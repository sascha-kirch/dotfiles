vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.wrap = false
vim.opt.scrolloff = 8

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50

vim.opt.incsearch = true
vim.opt.cursorline = true
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.history = 1000
vim.opt.showmode =false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.clipboard = "unnamedplus"

vim.opt.colorcolumn="120"
vim.opt.termguicolors=true

vim.g.mapleader = " "
