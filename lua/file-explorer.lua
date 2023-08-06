vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.api.nvim_create_autocmd({ "VimResized" }, {
    desc = "Resize nvim-tree if nvim window got resized",

    group = vim.api.nvim_create_augroup("NvimTreeResize", { clear = true }),
    callback = function()
        local percentage = 25

        local ratio = percentage / 100
        local width = math.floor(vim.go.columns * ratio)
        vim.cmd("tabdo NvimTreeResize " .. width)
    end,
})

-- empty setup using defaults
require("nvim-tree").setup({
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 50,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  })
