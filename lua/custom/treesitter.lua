require("nvim-treesitter.configs").setup {
    ensure_installed = { 
        "c_sharp",
        "css",
        "html",
        "javascript", 
        "json",
        "lua", 
        "markdown",
        "python", 
        "rust", 
        "typescript", 
        "tsx"
    },
    highlight = {
        enable = true,
    },
    auto_install = false
}