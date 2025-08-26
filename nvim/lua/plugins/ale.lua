return {
	"dense-analysis/ale",
	config = function()
		local g = vim.g
		g.ale_linters_explicit = 11
		g.ale_use_neovim_diagnostics_api = 1
		g.ale_linters = {
			java = { "eclipselsp" }, -- Adapt if your LSP requires a different name
		}
	end,
}
