return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        omnisharp = {
          filetypes = {
            "cs",
            "vb",
            "aspnetcorerazor",
          },
        },
      },
    },
  },
}
