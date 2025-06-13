return {
	"neovim/nvim-lspconfig",
	event = "BufReadPre",
	dependencies = {
		"mason.nvim",
		"blink.cmp",
		"mason-lspconfig.nvim",
	},
	-- config = function() end,
	keys = {
		{
			"<leader>r",
			function()
				local cmdId
				cmdId = vim.api.nvim_create_autocmd({ "CmdlineEnter" }, {
					callback = function()
						local key = vim.api.nvim_replace_termcodes("<C-f>", true, false, true)
						vim.api.nvim_feedkeys(key, "c", false)
						vim.api.nvim_feedkeys("0", "n", false)
						-- Autocmd was triggered and so we can remove the ID and return true to delete the autocmd
						cmdId = nil
						return true
					end,
				})
				vim.lsp.buf.rename()
				-- If LSP couldn't trigger rename on the symbol, clear the autocmd
				vim.defer_fn(function()
					-- The cmdId is not nil only if the LSP failed to rename
					if cmdId then
						vim.api.nvim_del_autocmd(cmdId)
					end
				end, 500)
			end,
			desc = "Rename symbol",
		},
	},
}
