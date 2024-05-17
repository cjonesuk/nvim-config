local set = vim.keymap.set
 
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