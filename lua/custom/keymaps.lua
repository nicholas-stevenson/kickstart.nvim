-- Send to Maya Mapptings
vim.keymap.set("v", "<leader>ma", ":SendToMayaPy<CR>")
vim.keymap.set("n", "<leader>ma", ":SendToMayaPy<CR>")

-- Remaps the Ctrl+W + h/j/k/l keys, which moves your cursor
-- the particular window splits, to just Ctrl+h/j/k/l

vim.keymap.set("n", "<C-H>", "<C-W>h")
vim.keymap.set("n", "<C-J>", "<C-W>j")
vim.keymap.set("n", "<C-K>", "<C-W>k")
vim.keymap.set("n", "<C-L>", "<C-W>l")
