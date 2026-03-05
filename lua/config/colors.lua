-- lua/
local M = {}

M.setup = function()
  -- Por exemplo, Catppuccin
  require("catppuccin").setup({ flavour = "mocha" })
  vim.cmd("colorscheme catppuccin")
end

return M
