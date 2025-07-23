require('telescope').setup {
    extensions = {
        fzf = {}
    },
    defaults = {
        file_ignore_patterns = {
            "out",
            "build",
        }
    }
}
require('telescope')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space>ft', builtin.find_files, {})
vim.keymap.set('n', '<Space>fs', builtin.live_grep, {})
