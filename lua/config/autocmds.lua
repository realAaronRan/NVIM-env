-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.cmd("autocmd BufEnter * :lua require('lazygit.utils').project_root_dir()")
vim.cmd("autocmd FileType gitcommit,gitrebase,gitconfig set bufhidden=delete")
