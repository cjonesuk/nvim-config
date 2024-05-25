return { 
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        priority = 50,
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "WhoIsSethDaniel/mason-tool-installer.nvim",
        },
        config = function() 
            require "custom.lsp"
        end
    }
}