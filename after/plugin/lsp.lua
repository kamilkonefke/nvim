local lsps = {
    { 'clangd', { cmd = { "clangd", "--completion-style=bundled", "--background-index=true", "--suggest-missing-includes" } } },
    { 'zls' }, { 'ols' }, { 'rust_analyzer' }, { 'gopls' }, { 'pyright' }, { 'astro' },
}

for _, lsp in pairs(lsps) do
    local name, config = lsp[1], lsp[2]
    vim.lsp.enable(name)
    if config then
        vim.lsp.config(name, config)
    end
end

vim.diagnostic.config({
    virtual_text = true,
})

require('lsp_signature').setup({
    floating_window = false,
    hint_enable = true,
    hint_prefix = "λ ",
    handler_opts = {
        border = "none"
    },
})

require('nvim-ts-autotag').setup()
require('nvim-autopairs').setup()
