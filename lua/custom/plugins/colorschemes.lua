return {
    {
        "tjdevries/colorbuddy.nvim",
        dependencies = { 
            "AlexvZyl/nordic.nvim"
        },
        config = function ()
            require "custom.colorscheme"
        end,
    }
}