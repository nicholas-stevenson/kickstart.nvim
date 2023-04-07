require("custom.settings")
require("custom.keymaps")

vim.cmd.colorscheme("tokyonight-moon")


-- Configuration for sendtomaya
vim.g.send_to_maya_host = "127.0.0.1"
vim.g.send_to_maya_port = 7002
vim.g.send_to_maya_prefer_language = 'python'

-- Copilot Settings
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true

if vim.g.neovide then
    vim.o.guifont = "Iosevka:h12:sb"
    vim.g.neovide_cursor_vfx_mode = "railgun"
end

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
