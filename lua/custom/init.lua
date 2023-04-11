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
