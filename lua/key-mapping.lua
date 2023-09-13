local api = require "nvim-tree.api"
local map = vim.api.nvim_set_keymap

--Vim tree
vim.keymap.set('n','<C-n>',api.tree.toggle)

vim.keymap.set('n','<leader>lpd','<CMD>Lspsaga peek_definition<CR>')
vim.keymap.set('n','<leader>lgd','<CMD>Lspsaga goto_definition<CR>')

vim.keymap.set('n','<leader>ltd','<CMD>Lspsaga goto_type_definition<CR>')
-- Loooks for function references
vim.keymap.set('n','<leader>lfd','<CMD>Lspsaga finder<CR>')

vim.keymap.set('n','<leader>ot','<CMD>Lspsaga term_toggle<CR>')


vim.keymap.set('n','<leader>x','<CMD>BufferLineCycleNext<CR>', {
    silent = true
})


vim.keymap.set('n','<leader>z','<CMD>BufferLineCyclePrev<CR>', {
    silent = true
})

vim.keymap.set('n','<leader>1','<Cmd>BufferLineGoToBuffer 1<CR>', {
    silent = true
})

vim.keymap.set('n','<leader>2','<Cmd>BufferLineGoToBuffer 2<CR>', {
    silent = true
})

vim.keymap.set('n','<leader>3','<Cmd>BufferLineGoToBuffer 3<CR>', {
    silent = true
})

vim.keymap.set('n','<leader>4','<Cmd>BufferLineGoToBuffer 4<CR>', {
    silent = true
})

vim.keymap.set('n','<leader>5','<Cmd>BufferLineGoToBuffer 5<CR>', {
    silent = true
})

vim.keymap.set('n','<leader>6','<Cmd>BufferLineGoToBuffer 6<CR>', {
    silent = true
})

vim.keymap.set('n','<leader>7','<Cmd>BufferLineGoToBuffer 7<CR>', {
    silent = true
})

vim.keymap.set('n','<leader>8','<Cmd>BufferLineGoToBuffer 8<CR>', {
    silent = true
})

vim.keymap.set('n','<leader>9','<Cmd>BufferLineGoToBuffer 9<CR>', {
    silent = true
})

-- nvim-dap keymappings
-- Press f5 to debug
map('n', '<F5>', [[:lua require'dap'.continue()<CR>]], {})
-- Press CTRL + b to toggle regular breakpoint
map('n', '<C-b>', [[:lua require'dap'.toggle_breakpoint()<CR>]], {})
-- Press CTRL + c to toggle Breakpoint with Condition
map('n', '<C-c>', [[:lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>]], {})
-- Press CTRL + l to toggle Logpoint
map('n', '<C-l>', [[:lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log Point Msg: '))<CR>]], {})
-- Pressing F10 to step over
map('n', '<F10>', [[:lua require'dap'.step_over()<CR>]], {})
-- Pressing F11 to step into
map('n', '<F11>', [[:lua require'dap'.step_into()<CR>]], {})
-- Pressing F12 to step out
map('n', '<F12>', [[:lua require'dap'.step_out()<CR>]], {})
-- Press F6 to open REPL
map('n', '<F6>', [[:lua require'dap'.repl.open()<CR>]], {})
-- Press dl to run last ran configuration (if you used f5 before it will re run it etc)
map('n', 'dl', [[:lua require'dap'.run_last()<CR>]], {})

map('n', '<C-d>', [[:NvimTreeToggle<CR> :lua require'dapui'.toggle()<CR>]], {})

--Telescope

vim.keymap.set('n', '<leader>ff', ':lua require"telescope.builtin".find_files({no_ignore=true, hidden=true})<CR>', {})
-- ripgrep files, respects gitignore
vim.keymap.set('n', '<leader>fg', ':lua require"telescope.builtin".live_grep()<CR>', {})
