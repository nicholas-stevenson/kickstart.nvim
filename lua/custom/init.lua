-- Send to Maya Mapptings
vim.keymap.set("v", "<leader>ma", ":SendToMayaPy<CR>")
vim.keymap.set("n", "<leader>ma", ":SendToMayaPy<CR>")

-- Remaps the Ctrl+W + h/j/k/l keys, which moves your cursor
-- the particular window splits, to just Ctrl+h/j/k/l

vim.keymap.set("n", "<C-H>", "<C-W>h")
vim.keymap.set("n", "<C-J>", "<C-W>j")
vim.keymap.set("n", "<C-K>", "<C-W>k")
vim.keymap.set("n", "<C-L>", "<C-W>l")

-- 

-- Configuration for sendtomaya
vim.g.send_to_maya_host = "127.0.0.1"
vim.g.send_to_maya_port = 7002
vim.g.send_to_maya_prefer_language = 'python'


-- Copilot Settings
vim.keymap.set("n", "S-<TAB>", "copilot#Accept<CR>")
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true

--[[ opts.lua ]]
local opt = vim.opt

-- [[ Context ]]
-- opt.colorcolumn = '120'   -- str:  Show col for max line length
opt.number = true         -- bool: Show line numbers
opt.relativenumber = true -- bool: Show relative line numbers
opt.scrolloff = 4         -- int:  Min num lines of context
opt.signcolumn = "yes"    -- str:  Show the sign column
opt.wrap = false          -- bool: Don't wrap lines

-- [[ Filetypes ]]
opt.encoding = 'utf8'     -- str:  String encoding to use
opt.fileencoding = 'utf8' -- str:  File encoding to use

-- [[ Theme ]]
opt.syntax = "ON"        -- str:  Allow syntax highlighting
opt.termguicolors = true -- bool: If term supports ui color then enable

-- [[ Search ]]
opt.ignorecase = true -- bool: Ignore case in search patterns
opt.smartcase = true  -- bool: Override ignorecase if search contains capitals
opt.incsearch = true  -- bool: Use incremental search
opt.hlsearch = false  -- bool: Highlight search matches

-- [[ Whitespace ]]
opt.expandtab = true -- bool: Use spaces instead of tabs
opt.shiftwidth = 4   -- num:  Size of an indent
opt.softtabstop = 4  -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 4      -- num:  Number of spaces tabs count for

-- [[ Splits ]]
opt.splitright = true -- bool: Place new window to right of current one
opt.splitbelow = true -- bool: Place new window below the current one
