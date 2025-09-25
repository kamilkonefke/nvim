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
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
    },
})
