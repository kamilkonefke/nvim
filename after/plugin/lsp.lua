require('mason').setup()
require('mason-lspconfig').setup({
    automatic_enable = true,
})

vim.diagnostic.config({
    virtual_text = true,
})

require('lsp_signature').setup({
    floating_window = false,
    hint_enable = true,
    hint_prefix = '',
    handler_opts = {border = 'none' },
})

require('nvim-ts-autotag').setup()
require('nvim-autopairs').setup()
