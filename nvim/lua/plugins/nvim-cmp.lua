return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      -- Filter out snippet items for all files
      opts.sources = cmp.config.sources(vim.tbl_map(function(source)
        if source.name == "nvim_lsp" then
          source.entry_filter = function(entry, _)
            local kind = require("cmp.types").lsp.CompletionItemKind[entry:get_kind()]
            return kind ~= "Snippet"
          end
        end
        return source
      end, opts.sources))

      -- Remove any dedicated snippet sources
      opts.sources = vim.tbl_filter(function(source)
        return source.name ~= "luasnip" and source.name ~= "snippy"
      end, opts.sources)

      return opts
    end,
  },
}
