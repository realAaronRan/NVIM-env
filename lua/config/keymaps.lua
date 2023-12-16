-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- save changed buffers
local Util = require("lazyvim.util")
local map = Util.safe_keymap_set
local unmap = vim.keymap.del
map("n", "<leader>ba", "<cmd>wa<cr>", { desc = "Save all buffers" })

-- add terminal border
vim.keymap.set("n", "<C-_>", function ()
    Util.terminal(nil, { border = "solid" })
end, { desc = "Term with border" })

unmap({ "n", "i", "v" }, "<A-j>")
unmap({ "n", "i", "v" }, "<A-k>")
unmap({ "n", "t" }, "<C-h>")
unmap({ "n", "t" }, "<C-j>")
unmap({ "n", "t" }, "<C-k>")
unmap({ "n", "t" }, "<C-l>")
map({ "n", "t" }, "<A-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map({ "n", "t" }, "<A-j>", "<C-w>j", { desc = "Go to left window", remap = true })
map({ "n", "t" }, "<A-k>", "<C-w>k", { desc = "Go to left window", remap = true })
map({ "n", "t" }, "<A-l>", "<C-w>l", { desc = "Go to left window", remap = true })

unmap("n", "<leader>gg")
map("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<cr>", { desc = "Toggle Lazy Git" })
