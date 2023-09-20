--General
vim.opt.backup = false
vim.opt.mouse = ""
vim.opt.undodir = os.getenv("HOME") .. ".cache/"
vim.opt.undofile = true
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.scrolloff = 16
vim.opt.colorcolumn = "80"

--Numbering
vim.opt.number = true
vim.opt.relativenumber = true

--Formatting
vim.opt.tabstop = 4
vim.opt.wrap = true
vim.opt.smartindent = true

--Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

