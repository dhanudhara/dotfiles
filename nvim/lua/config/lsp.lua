vim.lsp.config("luau", {
	cmd = { "luau" },
	filetype = { "lua" },
})
vim.lsp.enable("luau")

vim.lsp.config("pylyzer", {
	name = "pylyzer",
	cmd = { "pylyzer", "--server" }, -- Command to start the pylyzer language server
	filetypes = { "python" },
	root_dir = function(fname)
		local util = require("lspconfig.util")
		local root_files = {
			"pyproject.toml",
			"setup.py",
			"setup.cfg",
			"requirements.txt",
			"Pipfile",
		}
		return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
	end,
})
vim.lsp.enable("pylyzer")
