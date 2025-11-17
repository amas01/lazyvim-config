-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Buffer controls
vim.keymap.set("n", "<leader><delete>", function()
  Snacks.bufdelete()
end, { desc = "Close Buffer" })
vim.keymap.set("n", "<leader><CR>", "<cmd>%bd<cr>", { desc = "Close All Buffers" })
-- This seems to get overwritten whilst in plugin config, so added here
vim.keymap.set("n", "<leader>e", function()
  require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
end, { desc = "Open mini.files (directory of current file)" })

-- remap 0 to jump to begining of line, first non white space
vim.keymap.set({ "n", "v" }, "0", "_")
-- remap - to jump to end of line
vim.keymap.set({ "n", "v" }, "-", "$")

-- map enter to insert a new line below and shift enter above
vim.keymap.set("n", "<CR>", "o<Esc>")
vim.keymap.set("n", "<S-CR>", "m`O<Esc>``")

-- remap # to remain on current word and search forwards
vim.keymap.set("n", "#", ":keepjumps normal! mi*`i<CR>")

-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- open terminal
vim.keymap.set("n", "<leader>T", ":terminal<CR>", { desc = "[T]erminal" })
