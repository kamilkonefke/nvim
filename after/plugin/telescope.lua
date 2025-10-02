require('telescope').setup {
    extensions = {
        fzf = {}
    },
    defaults = {
        disable_devicons = true,
        file_ignore_patterns = { "out", "build" }
    }
}
require('telescope')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space>ft', builtin.find_files, {})
vim.keymap.set('n', '<Space>fs', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fn', builtin.treesitter, {})
