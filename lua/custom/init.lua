require("custom.settings")
require("custom.keymaps")

require("statuscol").setup({
    relculright = true,
    segments = {
        { text = { require("statuscol.builtin").foldfunc }, click = "v:lua.ScFa" },
        {
            sign = { name = { "Diagnostic" }, maxwidth = 2, auto = true },
            click = "v:lua.ScSa"
        },
        { text = { require("statuscol.builtin").lnumfunc }, click = "v:lua.ScLa", },
        {
            sign = { name = { ".*" }, maxwidth = 2, colwidth = 1, auto = true },
            click = "v:lua.ScSa"
        },
    }
})

local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.completion.spell,
        null_ls.builtins.diagnostics.ruff,
        null_ls.builtins.formatting.black
    },
})

require('smart-splits').setup({
    -- Ignored filetypes (only while resizing)
    ignored_filetypes = {
        'nofile',
        'quickfix',
        'prompt',
    },
    -- Ignored buffer types (only while resizing)
    ignored_buftypes = { 'NvimTree' },
    -- the default number of lines/columns to resize by at a time
    default_amount = 3,
    -- whether to wrap to opposite side when cursor is at an edge
    -- e.g. by default, moving left at the left edge will jump
    -- to the rightmost window, and vice versa, same for up/down.
    wrap_at_edge = true,
    -- when moving cursor between splits left or right,
    -- place the cursor on the same row of the *screen*
    -- regardless of line numbers. False by default.
    -- Can be overridden via function parameter, see Usage.
    move_cursor_same_row = false,
    -- whether the cursor should follow the buffer when swapping
    -- buffers by default; it can also be controlled by passing
    -- `{ move_cursor = true }` or `{ move_cursor = false }`
    -- when calling the Lua function.
    cursor_follows_swapped_bufs = false,
    -- resize mode options
    resize_mode = {
        -- key to exit persistent resize mode
        quit_key = '<ESC>',
        -- keys to use for moving in resize mode
        -- in order of left, down, up' right
        resize_keys = { 'h', 'j', 'k', 'l' },
        -- set to true to silence the notifications
        -- when entering/exiting persistent resize mode
        silent = false,
        -- must be functions, they will be executed when
        -- entering or exiting the resize mode
        hooks = {
            on_enter = nil,
            on_leave = nil,
        },
    },
    -- ignore these autocmd events (via :h eventignore) while processing
    -- smart-splits.nvim computations, which involve visiting different
    -- buffers and windows. These events will be ignored during processing,
    -- and un-ignored on completed. This only applies to resize events,
    -- not cursor movement events.
    ignored_events = {
        'BufEnter',
        'WinEnter',
    },
    -- enable or disable a multiplexer integration;
    -- automatically determined, unless explicitly disabled or set,
    -- by checking the $TERM_PROGRAM environment variable,
    -- and the $KITTY_LISTEN_ON environment variable for Kitty
    multiplexer_integration = nil,
    -- disable multiplexer navigation if current multiplexer pane is zoomed
    -- this functionality is only supported on tmux and Wezterm due to kitty
    -- not having a way to check if a pane is zoomed
    disable_multiplexer_nav_when_zoomed = true,
})
