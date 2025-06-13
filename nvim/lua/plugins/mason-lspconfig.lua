return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"saghen/blink.cmp",
	},
	opts = {
		ensure_installed = { "lua_ls" },
		automatic_installation = true,
		automatic_enable = true,
	},
	config = function(_, opts)
		require("mason-lspconfig").setup(opts)
		local blink_capabilities = require("blink.cmp").get_lsp_capabilities()

		local lspconfig = require("lspconfig")
		local servers = require("mason-lspconfig").get_installed_servers()

		for _, server_name in ipairs(servers) do
			lspconfig[server_name].setup({
				capabilities = blink_capabilities,
			})
		end
	end,
}
