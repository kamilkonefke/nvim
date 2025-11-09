local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    {'windwp/nvim-autopairs'},
    {'windwp/nvim-ts-autotag'},

    {'nvim-lualine/lualine.nvim', dependencies = {'nvim-tree/nvim-web-devicons'}},

    -- Colors
    { 'rose-pine/neovim', name = 'rose-pine'},
    { 'ellisonleao/gruvbox.nvim' },
    { 'blazkowolf/gruber-darker.nvim' },
    { 'kdheepak/monochrome.nvim' },

    -- Lsp
    {'mason-org/mason.nvim', opts = {}},
    {'mason-org/mason-lspconfig.nvim', opts = {}},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'ray-x/lsp_signature.nvim'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-path'},
    {'L3MON4D3/LuaSnip'},

    -- Telescope
    {'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' }},
}

local opts = {}
require("lazy").setup(plugins, opts)
