-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if vim.g.vscode then
	local vscode = require("vscode")

	vim.keymap.set("n", "<leader>ff", function()
		vscode.action("workbench.action.quickOpen")
	end)

	vim.keymap.set("n", "<leader>cf", function()
		vscode.action("editor.action.formatDocument")
	end)

	vim.keymap.set("n", "<leader>bd", function()
		vscode.action("workbench.action.closeActiveEditor")
	end)

	vim.keymap.set("n", "<leader>bo", function()
		vscode.action("workbench.action.closeOtherEditors")
	end)

	vim.keymap.set("n", "<leader>bw", function()
		vscode.action("workbench.action.closeAllEditors")
	end)

	vim.keymap.set("n", "<leader>fr", function()
		vscode.action("workbench.action.openRecent")
	end)

	vim.keymap.set("n", "<leader>gg", function()
		vscode.action("workbench.action.gotoLine")
	end)

	vim.keymap.set("n", "<leader>sg", function()
		vscode.action("workbench.action.findInFiles")
	end)

	vim.keymap.set("n", "<leader>/", function()
		vscode.action("actions.find")
	end)
end
