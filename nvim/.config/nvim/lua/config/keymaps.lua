-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vertical center
vim.keymap.set("n", "<C-d>", "m'<C-d>zz")
vim.keymap.set("n", "<C-u>", "m'<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- indent
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
-- move lines
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv", { silent = true })
-- editor
vim.keymap.set("i", "{", "{<C-g>u") -- add undo history
vim.keymap.set("v", "p", '"_dP') -- paste
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("n", "J", "mzJ`z") -- move line up
vim.keymap.set("n", "<C-a>", "ggVG") -- select all
