return {
    "nvim-neorg/neorg",
    lazy = false, 
    version = "*", 
    config = function()
        require("neorg").setup({
            load = {
                ["core.defaults"] = {}, 

                ["core.concealer"] = {
                    config = {
                        icon_preset = "varied", 
                    },
                },
                
                ["core.dirman"] = {
                    config = {
                        workspaces = {
                            notes = "~/Documents/notes", 
                        },
                        default_workspace = "notes",
                    },
                },
            }
        })
    end,
}
