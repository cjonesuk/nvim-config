local test = assert(vim.fn.stdpath "data") --[[@as string]]
local db = test .. "/telescope_history.sqlite3" --[[@as string]] 

require("telescope").setup {
    extensions = {
       fzf = {},
       wrap_results = true,
       history = {
         path = db,
         limit = 100,
       },
    },
}
  
pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "smart_history")