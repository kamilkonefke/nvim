local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space>ft', builtin.find_files, {})
vim.keymap.set('n', '<Space>fs', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
