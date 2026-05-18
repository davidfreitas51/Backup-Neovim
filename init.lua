-- bootstrap lazy.nvim, LazyVim and your plugins
-- init.lua

vim.opt.termguicolors = true
vim.schedule(function()
  require("config.colors").setup()
end)
-- Bootstrap LazyVim e seus plugins
require("config.lazy")
