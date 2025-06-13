return {
	-- setting up linters
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				css = { "prettier" },
				java = { "google-java-format" },
				json = { "prettier" },
				kotlin = { "ktlint" },
				lua = { "stylua" },
				markdown = { "markdownlint" },
				python = { "autopep8" },
				sh = { "shfmt" },
				typescript = { "ts-standard" },
			},
			format_on_save = {
				lsp_format = "fallback",
				async = false,
				timeout_ms = 3000,
			},
		})
	end,
}
