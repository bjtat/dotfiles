local disable_keys = function()
  return {}
end

return {
  -- stylua: ignore
  { "echasnovski/mini.ai", enabled = false, keys = disable_keys },
  { "echasnovski/mini.pairs", enabled = false, keys = disable_keys },
  { "garymjr/nvim-snippets", enabled = false, keys = disable_keys },
  { "windwp/nvim-ts-autotag", enabled = false, keys = disable_keys },
  { "rafamadriz/friendly-snippets", enabled = false, keys = disable_keys },
}
