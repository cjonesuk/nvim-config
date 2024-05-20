local cmp = require "cmp"

cmp.setup { 
    source = {
        { name = "path" }, 
        { name = "buffer" },
    }
}