return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      vim.diagnostic.config({
        update_in_insert = true,
      })

      return opts
    end,
  },
}
