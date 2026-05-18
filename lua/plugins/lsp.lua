return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.inlay_hints = { enabled = false }

      local orig_on_attach = opts.on_attach
      opts.on_attach = function(client, bufnr)
        if orig_on_attach then
          orig_on_attach(client, bufnr)
        end
        vim.lsp.inlay_hint.enable(false, { bufnr = bufnr })
      end

      return opts
    end,
  },
}
