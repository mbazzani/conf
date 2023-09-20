--General
vim.opt.mouse = ""
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.scrolloff = 16
vim.opt.colorcolumn = "80"

--Versioning
vim.opt.backupdir = os.getenv("HOME") .. ".backup/" 
vim.opt.backup = true
vim.opt.undodir = os.getenv("HOME") .. ".cache/"
vim.opt.undofile = true
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

