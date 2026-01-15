return {
    {
        'hrsh7th/cmp-nvim-lsp',
    },
    {
        'hrsh7th/cmp-buffer', 
    },
    {
        'hrsh7th/cmp-path',  
    },
    {
        'L3MON4D3/LuaSnip',
        dependencies = {
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
        },
    },

    {
        'hrsh7th/nvim-cmp',
        --event = 'InsertEnter',
        config = function()
            local cmp = require('cmp')
            require('luasnip.loaders.from_vscode').lazy_load()

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ['<CR>'] = cmp.mapping.confirm({select = false}),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-d>'] = cmp.mapping.scroll_docs(4),
                    ['<TAB>'] = cmp.mapping.select_next_item(),
                    ['<S-TAB>'] = cmp.mapping.select_prev_item(),
                }),
                sources = cmp.config.sources({
                    {name = 'nvim_lsp'},
                    {name = 'luasnip'},
                    {name = 'buffer'},
                    {name = 'path'},
                }),
            })
        end
    }
}


