return {
    {
        "hrsh7th/nvim-cmp", -- autocompletion core
        dependencies = {
            "hrsh7th/cmp-nvim-lsp", -- lsp -> cmp bridge
            "hrsh7th/cmp-buffer", -- words from opened files
            "hrsh7th/cmp-path", -- paths
            "L3MON4D3/LuaSnip", -- lua snippets core
            "saadparwaiz1/cmp_luasnip", -- luasnip -> cmp bridge
        },
    }
}
