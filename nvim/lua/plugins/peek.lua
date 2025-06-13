return {
	"toppair/peek.nvim",
	event = { "VeryLazy" },
	build = "deno task --quiet build:fast",
	keys = {
		{ "<leader>po", "<cmd>PeekOpen<cr>", desc = "Peek Open" },
		{ "<leader>pc", "<cmd>PeekClose<cr>", desc = "Peek Close" },
	},
	config = function()
		require("peek").setup({
			auto_load = true,
			syntax = true,
			update_on_change = true,
			app = "browser",
		})
		vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
		vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
	end,
}
