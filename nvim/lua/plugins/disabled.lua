local disable_keys = function()
  return {}
end

return {
  -- stylua: ignore
  -- { "hrsh7th/nvim-cmp", enabled = false, keys = disable_keys },
  { "rafamadriz/friendly-snippets", enabled = false, keys = disable_keys },
  { "garymjr/nvim-snippets", enabled = false, keys = disable_keys },
  { "folke/noice.nvim", enabled = false, keys = disable_keys },
}
