function ColorMyPencils()
    require('rose-pine').setup{
        disable_background = true,
    }
	vim.cmd.colorscheme('monochrome')
end

ColorMyPencils()

vim.opt.statusline = '%#StatusLine# %f %m %= %y %l:%c %p%%'
