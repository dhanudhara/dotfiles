return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        -- ensure_installed = {},
        handlers = {
            function(server_name)
                require("lspconfig")[server_name].setup({
                    capabilities = require("blink.cmp").get_capabilities(),
                })
            end,
        },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {}, },
        "neovim/nvim-lspconfig",
        "saghen/blink.cmp",
    },
}
