return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    -- garante que a source LSP esteja ativa
    opts.sources = opts.sources or {}
    opts.sources.default = { "lsp", "path", "snippets", "buffer" }

    -- garante que autocomplete abra automaticamente
    opts.completion = opts.completion or {}
    opts.completion.trigger = {
      show_on_insert = true,
    }

    return opts
  end,
}
