return {
  "mrcjkb/rustaceanvim",
  opts = {
    server = {
      settings = {
        ["rust-analyzer"] = {
          cargo = {
            features = "all",
          },
          check = { features = "all" },
        },
      },
    },
  },
}
