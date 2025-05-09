local lsp = require('lsp-zero')

-- Setup language servers
local lspconfig = require('lspconfig')
lspconfig.clangd.setup{
    cmd = {"clangd", "--completion-style=bundled", "--header-insertion=never", "--background-index=true", "--suggest-missing-includes"},
}
lspconfig.pyright.setup{}

-- Keybinds
local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
        ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    },
    performance = {
        max_view_entries = 20,
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
