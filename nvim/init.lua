-- Appearence
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.wrap = true
vim.opt.smartcase = true

--  Indentation
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
	
-- Cipboard
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }

-- LazyVim Plugin Manager
require("config.lazy")

-- Other configs
require("config.highlight")

-- Telescope Keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find Buffers' })

-- LSP 
local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
    'force',
    lspconfig_defaults.capabilities,
    require('blink.cmp').get_lsp_capabilities()
)
