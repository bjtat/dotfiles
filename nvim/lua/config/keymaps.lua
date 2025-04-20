-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>sf", LazyVim.pick("files"), { desc = "Search files" })
vim.keymap.set("n", "<leader>q", function()
  Snacks.bufdelete()
end, { desc = "Close buffer" })
vim.keymap.set("n", "<leader>sr", function()
  Snacks.picker.recent({ filter = { cwd = true } })
end, { desc = "Search recent files" })
