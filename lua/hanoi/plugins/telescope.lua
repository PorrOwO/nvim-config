return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },

    keys = {
        { '<leader>ff', "<cmd>Telescope find_files<CR>", { desc = 'Telescope find files' }},
        {'<leader>fg',"<cmd>Telescope live_grep<CR>", { desc = 'Telescope live grep' }},
        {'<leader>fb',"<cmd>Telescope buffers<CR>", { desc = 'Telescope buffers' }},
        { '<leader>fh',"<cmd>Telescope help_tags<CR>", { desc = 'Telescope help tags' }},
    },

    require('telescope').setup{
        pickers = {
            find_files = {
                theme = "ivy"
            },
            live_grep = {
                theme = "ivy"
            },
        },
    },
}
