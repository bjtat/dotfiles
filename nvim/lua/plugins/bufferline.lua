local bufferline = require("bufferline")
return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      indicator = {
        style = "none",
      },
      style_preset = {
        bufferline.style_preset.no_italic,
        bufferline.style_preset.no_bold,
        -- bufferline.style_preset.minimal,
      },
      always_show_bufferline = true,
    },
  },
}
