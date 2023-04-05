require("custom.settings")


-- Send to Maya Mapptings
vim.keymap.set("v", "<leader>ma", ":SendToMayaPy<CR>")
vim.keymap.set("n", "<leader>ma", ":SendToMayaPy<CR>")

-- Remaps the Ctrl+W + h/j/k/l keys, which moves your cursor
-- the particular window splits, to just Ctrl+h/j/k/l

vim.keymap.set("n", "<C-H>", "<C-W>h")
vim.keymap.set("n", "<C-J>", "<C-W>j")
vim.keymap.set("n", "<C-K>", "<C-W>k")
vim.keymap.set("n", "<C-L>", "<C-W>l")

-- Configuration for sendtomaya
vim.g.send_to_maya_host = "127.0.0.1"
vim.g.send_to_maya_port = 7002
vim.g.send_to_maya_prefer_language = 'python'

-- Copilot Settings
vim.keymap.set("n", "S-<TAB>", "copilot#Accept<CR>")
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
