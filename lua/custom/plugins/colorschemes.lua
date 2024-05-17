local nordic  = {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000
}

return {
    {
        "tjdevries/colorbuddy.nvim",
        lazy = false,
        priority = 1000,
        dependencies = { 
            nordic
        },
        config = function ()
            require "custom.colorscheme"
        end,
    }
}