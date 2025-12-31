vim.o.termguicolors = true

vim.o.winborder = "rounded"

vim.o.smarttab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.expandtab = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.o.number = true
vim.o.relativenumber = true

vim.o.scrolloff = 12

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.hlsearch = true

vim.o.wrap = false

vim.o.clipboard = "unnamedplus"
vim.o.undofile = true
vim.o.swapfile = false

vim.o.inccommand = "split"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.splitkeep = "cursor"

vim.opt.path:append("**")
vim.opt.wildignore:append({ "*/node_modules/*" })
