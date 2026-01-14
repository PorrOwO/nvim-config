return {
    { 
        "miikanissi/modus-themes.nvim", 
        lazy = false,
    },
    {
        'maxmx03/solarized.nvim',
        lazy = false,
    },

    { 
        "calind/selenized.nvim",
        lazy = false,
    },
    {
        "blazkowolf/gruber-darker.nvim",
        lazy = false,
    },
    {
        "zaldih/themery.nvim",
        lazy = false,
        config = function()
            require("themery").setup({
                themes = {"modus_operandi", "modus_vivendi", "solarized", "selenized", "gruber-darker"},
                livePreview = true,
            })
        end
    }
}
