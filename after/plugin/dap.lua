local ui = require('dapui')
local dap = require('dap')

require('nvim-dap-virtual-text').setup()
require("dap-go").setup()
require("dapui").setup()

require('mason-nvim-dap').setup({
    ensure_installed = { 'codelldb' }
})

dap.adapters.codelldb = {
    type = 'server',
    port = "${port}",
    executable = {
        command = vim.fn.stdpath("data") .. '/mason/bin/codelldb',
        args = {"--port", "${port}"},
    }
}

dap.configurations.odin = {
    {
        name = "Odin Debug",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},
    },
}

vim.keymap.set('n', "<leader>b", dap.toggle_breakpoint)
vim.keymap.set('n', "<leader>gb", dap.run_to_cursor)

vim.keymap.set('n', "<F1>", dap.continue)
vim.keymap.set('n', "<F2>", dap.step_into)
vim.keymap.set('n', "<F3>", dap.step_over)
vim.keymap.set('n', "<F4>", dap.step_out)
vim.keymap.set('n', "<F5>", dap.step_back)

vim.keymap.set("n", "<leader>?", function()
    require("dapui").eval(nil, { enter = true })
end)

dap.listeners.before.attach.dapui_config = function()
    ui.open()
end
dap.listeners.before.launch.dapui_config = function()
    ui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    ui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    ui.close()
end
