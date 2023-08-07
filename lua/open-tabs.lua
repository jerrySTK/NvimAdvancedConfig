vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        numbers =  function(opts)
            return string.format('%s|%s', opts.id, opts.raise(opts.ordinal))
        end,
        separator_style = "slope",
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_tabs_indicator = true,
        show_close_icon = true,
        color_icons = true
    }
}

