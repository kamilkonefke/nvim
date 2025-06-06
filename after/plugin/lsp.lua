local lsp = require('lsp-zero')
local lspconfig = require('lspconfig')

-- lsp's
lspconfig.clangd.setup{ cmd = { "clangd", "--completion-style=bundled", "--background-index=true", "--suggest-missing-includes" } }
lspconfig.zls.setup{}
lspconfig.pyright.setup{}
lspconfig.gopls.setup{}
lspconfig.lua_ls.setup{}

require('nvim-autopairs').setup()

require('lsp_signature').setup({
    floating_window = false,
    hint_enable = true,
    hint_prefix = "λ ",
    handler_opts = {
        border = "none"
    },
})

vim.diagnostic.config({
    virtual_text = true,
})

lsp.set_preferences({
    sign_icons = { }
})

lsp.setup()

require('lsp_signature').setup({
    floating_window = false,
    hint_enable = true,
    hint_prefix = "λ ",
    handler_opts = {
        border = "none"
    },
})
