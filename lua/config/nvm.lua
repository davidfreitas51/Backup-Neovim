-- Carregar NVM pro Neovim, pra Mason funcionar
vim.env.NVM_DIR = os.getenv("HOME") .. "/.nvm"
vim.cmd("silent !source $NVM_DIR/nvm.sh")
