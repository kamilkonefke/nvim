require('telescope').setup {
    extensions = {
        fzf = {}
    },
    defaults = {
        disable_devicons = true,
        file_ignore_patterns = { "out", "build" }
    }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ft', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fx', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>fn', builtin.treesitter, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>cc', builtin.colorscheme, {})
