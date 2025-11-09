require('nvim-treesitter.configs').setup {
  ensure_installed = { 'c', 'cpp', 'odin', 'zig', 'lua', 'vim', 'vimdoc', 'query', 'markdown'},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
