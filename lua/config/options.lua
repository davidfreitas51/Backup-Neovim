-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local local_bin = vim.fn.stdpath("config") .. "/bin"
if vim.fn.isdirectory(local_bin) == 1 and not string.find(vim.env.PATH or "", local_bin, 1, true) then
	vim.env.PATH = local_bin .. ":" .. (vim.env.PATH or "")
end

-- Keep yank/delete/paste synced with the OS clipboard.
vim.opt.clipboard = "unnamedplus"

-- Pick the best available clipboard provider at runtime.
if vim.fn.executable("wl-copy") == 1 and vim.fn.executable("wl-paste") == 1 then
	vim.g.clipboard = {
		name = "wl-clipboard",
		copy = { ["+"] = "wl-copy --foreground --type text/plain", ["*"] = "wl-copy --foreground --primary --type text/plain" },
		paste = { ["+"] = "wl-paste --no-newline", ["*"] = "wl-paste --no-newline --primary" },
		cache_enabled = 1,
	}
elseif vim.fn.executable("xclip") == 1 then
	vim.g.clipboard = {
		name = "xclip",
		copy = { ["+"] = "xclip -quiet -i -selection clipboard", ["*"] = "xclip -quiet -i -selection primary" },
		paste = { ["+"] = "xclip -o -selection clipboard", ["*"] = "xclip -o -selection primary" },
		cache_enabled = 1,
	}
elseif vim.fn.executable("xsel") == 1 then
	vim.g.clipboard = {
		name = "xsel",
		copy = { ["+"] = "xsel --clipboard --input", ["*"] = "xsel --primary --input" },
		paste = { ["+"] = "xsel --clipboard --output", ["*"] = "xsel --primary --output" },
		cache_enabled = 1,
	}
elseif vim.ui and vim.ui.clipboard and vim.ui.clipboard.osc52 then
	vim.g.clipboard = "osc52"
else
	vim.schedule(function()
		vim.notify("Clipboard provider ausente. Instale xclip/xsel (X11) ou wl-clipboard (Wayland).", vim.log.levels.WARN)
	end)
end
