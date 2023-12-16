-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- save changed buffers
local Util = require("lazyvim.util")
local map = Util.safe_keymap_set
local unmap = vim.keymap.del
map("n", "<leader>ba", "<cmd>wa<cr>", { desc = "Save all buffers" })
