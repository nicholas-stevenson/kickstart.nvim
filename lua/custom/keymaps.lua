-- Send to Maya Mapptings
vim.keymap.set("v", "<leader>ma", ":SendToMayaPy<CR>")
vim.keymap.set("n", "<leader>ma", ":SendToMayaPy<CR>")

-- Copilot
vim.keymap.set("n", "S-<TAB>", "copilot#Accept<CR>", { silent = true, expr = true })

-- recommended mappings
-- resizing splits
-- these keymaps will also accept a range,
-- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left)
vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down)
vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up)
vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right)
-- moving between splits
vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)
-- swapping buffers between windows
vim.keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left)
vim.keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down)
vim.keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up)
vim.keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right)

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
