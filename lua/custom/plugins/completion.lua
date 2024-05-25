return {
    {
        "hrsh7th/nvim-cmp",
        event = 'InsertEnter',
        lazy = false,
        priority = 100,
        dependencies = { 
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer",        
            { 
                "L3MON4D3/LuaSnip", 
                build = (function()
                    -- Build Step is needed for regex support in snippets.
                    -- This step is not supported in many windows environments.
                    -- Remove the below condition to re-enable on windows.
                    if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
                    return
                    end

                    print 'Running mkae install_jsregexp...'
                    return 'make install_jsregexp'
                end)(), 
            },
            "saadparwaiz1/cmp_luasnip",    
        },
        config = function()
            require "custom.completion"
        end
    }
}