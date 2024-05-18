local set = vim.keymap.set
local telescope = require "telescope.builtin"

-- Navigate between splits
set("n", "<c-j>", "<c-w><c-j>")
set("n", "<c-k>", "<c-w><c-k>")
set("n", "<c-l>", "<c-w><c-l>")
set("n", "<c-h>", "<c-w><c-h>")

-- Resize splits
set("n", "<M-,>", "<c-w>5>")
set("n", "<M-.>", "<c-w>5<")
set("n", "<M-t>", "<C-W>+")
set("n", "<M-s>", "<C-W>-")

-- Telescope
set("n", "<space>sf", telescope.find_files, { desc = "[S]earch [F]iles" })
set("n", "<space>sh", telescope.help_tags, { desc = "[S]earch [H]elp" })
set("n", "<space>sg", telescope.live_grep, { desc = "[S]earch [G]rep" })
set("n", "<space>s/", telescope.current_buffer_fuzzy_find, { desc = "[S]earch current buffer fuzzily" })

-- Shortcut for searching your Neovim configuration files
vim.keymap.set("n", "<space>sn", function()
    telescope.find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "[S]earch [N]eovim files" })