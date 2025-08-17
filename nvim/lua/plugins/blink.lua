return {
  {
    "Saghen/blink.cmp",
    opts = function(_, opts)
      -- Enable only the buffer completion source
      opts.sources = {
        default = { "buffer" },
      }
    end,
  },
}
