return {
	"ariedov/android-nvim",
	config = function()
        vim.g.android_sdk = "~/Android/Sdk"
		require("android-nvim").setup({
            sdk_path = vim.g.android_sdk_path,
        })
	end,
}
