return {
  -- My preferred colorscheme
  "sainnhe/gruvbox-material",
  config = function()
    vim.g.gruvbox_material_disable_italic_comment = 1
    vim.g.gruvbox_material_enable_bold = 0
    vim.g.gruvbox_material_background = "medium"
    vim.g.gruvbox_material_foreground = "original"
    vim.cmd.colorscheme("gruvbox-material")
  end,
}
