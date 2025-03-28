-- Appearence
vim.wo.number = true
vim.wo.relativenumber = true

-- Cipboard
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }

-- LazyVim Plugin Manager
require("config.lazy")

-- Mason PM for LSPs
require("mason").setup()
