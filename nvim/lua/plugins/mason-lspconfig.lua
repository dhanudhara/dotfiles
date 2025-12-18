return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
            "autopep8",
            "kotlin-lsp",
            "pyflakes",
            "python-lsp-server",
            "zls",
        },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {}, },
        "neovim/nvim-lspconfig",
        {
            "hrsh7th/nvim-cmp",
            dependencies = { "hrsh7th/cmp-nvim-lsp" },
            opts = {},
        },
    },
    config = function(_, opts)
        local mason_lspconfig = require("mason-lspconfig")
        local lspconfig = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        mason_lspconfig.setup({
            ensure_installed = opts.ensure_installed,
            handlers = {
                function(server_name)
                    lspconfig[server_name].setup({
                        capabilities = capabilities,
                    })
                end,
            },
        })
    end,
}
