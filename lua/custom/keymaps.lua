-- Send to Maya Mapptings
vim.keymap.set("v", "<leader>ma", ":SendToMayaPy<CR>")
vim.keymap.set("n", "<leader>ma", ":SendToMayaPy<CR>")

-- Copilot
vim.keymap.set("n", "S-<TAB>", "copilot#Accept<CR>", { silent = true, expr = true })

-- Remaps the Ctrl+W + h/j/k/l keys, which moves your cursor
-- the particular window splits, to just Ctrl+h/j/k/l

vim.keymap.set("n", "<C-H>", "<C-W>h")
vim.keymap.set("n", "<C-J>", "<C-W>j")
vim.keymap.set("n", "<C-K>", "<C-W>k")
vim.keymap.set("n", "<C-L>", "<C-W>l")

-- Shifts the currently highlighted lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Indents and Dedents the currently highlighted lines
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Cycles through the buffers
vim.keymap.set("n", "<TAB>", ":bnext<CR>")
vim.keymap.set("n", "<S-TAB>", ":bprevious<CR>")

-- Cycles through the tabs
vim.keymap.set("n", "<C-TAB>", ":tabnext<CR>")
vim.keymap.set("n", "<C-S-TAB>", ":tabprevious<CR>")

-- Neo-tree bindings
vim.keymap.set("n", "<leader>ee", ":NeoTreeShow<CR><bar>:NeoTreeFocus<CR>")
