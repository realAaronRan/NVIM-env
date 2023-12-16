local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  return
end

toggleterm.setup({
  size = vim.o.columns * 0.4,
  open_mapping = [[<C-\>]],
  start_in_insert = true,
  direction = "vertical",
})
