require('rose-pine').setup{
    disable_background = true,
}

require('gruber-darker').setup{
    italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = false,
    }
}

function ColorMyPencils()
	vim.cmd.colorscheme('gruber-darker')
end

ColorMyPencils()
