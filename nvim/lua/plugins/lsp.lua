return {
  "neovim/nvim-lspconfig",
  opts = {
    -- using clangd for C++ so toolchain is getting confused
    -- added this to fix it, which is recommended fix from `:h rustaceanvim.mason`
    setup = {
      rust_analyzer = function()
        return true
      end,
    },
    servers = {
      ruby_lsp = {
        mason = false,
        -- don't run with bundle, https://shopify.github.io/ruby-lsp/composed-bundle.html
        cmd = { vim.fn.expand("~/.asdf/shims/ruby-lsp") },
      },
      rubocop = {
        mason = false,
        -- See: https://docs.rubocop.org/rubocop/usage/lsp.html
        -- NOTE: if rubocop fails, check running processes and see if there's an old one
        cmd = { "bundle", "exec", "rubocop", "--lsp" },
        --   root_dir = require("lspconfig").util.root_pattern("Gemfile", ".git", "."),
      },
    },
  },
}
