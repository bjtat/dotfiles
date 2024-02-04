-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.scrolloff = 8 -- Lines of context

-- sainhe/gruxbox-material global Vim settings
vim.g.gruvbox_material_disable_italic_comment = 1

-- original gruvbox settings
vim.g.gruvbox_material_enable_bold = 0
vim.g.gruvbox_material_background = "medium"
vim.g.gruvbox_material_foreground = "original"

vim.o.statuscolumn = "%s %l %r"
