function ColorMyPencils()
    require('rose-pine').setup{
        disable_background = true,
    }
	-- vim.cmd.colorscheme('rose-pine')

    require('black-metal').setup({
        theme = 'emperor',
        variant = 'light',
    })
    require("black-metal").load()
end

ColorMyPencils()

require('lualine').setup{
    options = {
        icons_enabled = false,
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    }
};
