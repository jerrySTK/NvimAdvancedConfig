
--Display lines
vim.wo.number = true
-- Don't wrap long lines
vim.wo.wrap = false

--Tab size
local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4