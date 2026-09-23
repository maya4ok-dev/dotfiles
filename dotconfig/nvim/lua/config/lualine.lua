require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
  },
  sections = {
    lualine_a = { {'mode', fmt = string.lower} },
    lualine_b = {'filename'},
    lualine_c = {
        {'diagnostics', symbols = {
                error = '󰅙 ', warn  = '󰀦 ',
                info  = '󰋼 ', hint  = '󰁨 ',
        }},
    },

    lualine_x = {},
    lualine_y = { {'progress', fmt = string.lower} },
    lualine_z = {'location'}
  },
}
