-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

-- Add neotree toggle command
map("n", "<leader>nt", "<cmd>Neotree toggle<cr>", { desc = "Toggle NeoTree" })

-- TMUX NAVIGATOR PLUGIN
local keys = vim.keymap

-- Only set this up if we're in a tmux session
if os.getenv("TMUX") then
  keys.del("n", "<C-h>")
  keys.del("n", "<C-j>")
  keys.del("n", "<C-k>")
  keys.del("n", "<C-l>")
  keys.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
  keys.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
  keys.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
  keys.set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
end
