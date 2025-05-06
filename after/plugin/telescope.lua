require('telescope').setup {
    extensions = {
        fzf = {}
    }
}
require('telescope')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space>ft', builtin.find_files, {})
vim.keymap.set('n', '<Space>fs', builtin.live_grep, {})
