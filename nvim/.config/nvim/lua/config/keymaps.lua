local opts = { noremap = true, silent = true }

-- vertical center
vim.keymap.set("n", "<C-d>", "m'<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "m'<C-u>zz", opts)
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)
-- indent
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
-- move lines
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv", opts)
-- editor
vim.keymap.set("v", "p", '"_dP', opts) -- paste
vim.keymap.set("n", "<leader>d", '"_d', opts)
vim.keymap.set("n", "J", "mzJ`z", opts) -- move line up
vim.keymap.set("n", "<C-a>", "ggVG", opts) -- select all
