return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- Remove snippet sources (e.g., luasnip, snippy) if present
      opts.sources = vim.tbl_filter(function(source)
        return source.name ~= "luasnip" and source.name ~= "snippy"
      end, opts.sources or {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      })

      -- Set keyword_length for LSP and buffer sources
      for _, source in ipairs(opts.sources) do
        if source.name == "nvim_lsp" or source.name == "buffer" then
          source.keyword_length = 3
        end
      end
    end,
  },
}
