vim.o.number = true
vim.o.relativenumber = true vim.o.swapfile = false vim.o.autoindent = true
vim.o.cursorline = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.wrap = true
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4

-- disable the standard bar and command line (replaced with lualine)
vim.o.laststatus = 3
vim.o.cmdheight = 0

------------------------
-- KEYBINDINGS
------------------------

-- leader key
vim.g.mapleader = " "

-- yank and paste into the system's buffer
vim.keymap.set({'n', 'v', 'x'}, '<leader>y', '"+y')
vim.keymap.set({'n', 'v', 'x'}, '<leader>p', '"+p')
vim.keymap.set({'n', 'v', 'x'}, '<leader>P', '"+P')
vim.keymap.set({'n', 'v', 'x'}, '<leader>d', '"+d')

-- open explorer
vim.keymap.set('n', '<leader>e', ':Oil<CR>')

------------------------
-- OIL SETTINGS
------------------------

-- write buffer at InsertLeave
vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = "oil://*",
    callback = function()
        require"oil".save()
    end,
})

------------------------
-- PLUGINS
------------------------

require("config.lazy")
require("config.lualine")
require("config.lsp")
require("config.oil")
require("config.cmp")
require("config.luasnip")()

vim.lsp.inlay_hint.enable(true, { bufnr = 0 })

------------------------
-- LSP KEYBINDINGS
------------------------

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local bufnr = args.buf
        local opts = { noremap=true, silent=true, buffer=bufnr }

        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
        vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
    end,
})

-- colorscheme (theme)
-- provided by a plugin so this is located after the plugin section.
-- if someday you'll add a custom one, consider moving this before plugins.
vim.cmd.colorscheme "catppuccin"
