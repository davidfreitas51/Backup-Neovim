-- Carregar NVM pro Neovim, pra Mason funcionar
local nvm_dir = (os.getenv("HOME") or "") .. "/.nvm"
if vim.fn.isdirectory(nvm_dir) == 1 then
	vim.env.NVM_DIR = nvm_dir
end
