-- Highlight, edit, and navigate code
return { 
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require "custom.treesitter"
    end
}
