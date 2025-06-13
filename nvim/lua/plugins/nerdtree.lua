return {
	"preservim/nerdtree",
	--[[
	config = function()
		-- Start NERDTree on startup when opening directory
		vim.api.nvim_create_autocmd("VimEnter", {
			callback = function(data)
				-- Only open if opened without file arguments
				if vim.fn.isdirectory(data.file) == 0 and #vim.fn.argv() == 0 then
					vim.cmd("NERDTree")
				end
			end,
		})
	end,
    ]]
}
