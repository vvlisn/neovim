return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "macchiato", -- 可选: latte, frappe, macchiato, mocha
            transparent_background = false,
            integrations = {
                cmp = true,
                telescope = true,
                mason = true,
                nvimtree = true,
                treesitter = true,
                notify = true,
                which_key = true,
            },
        })
    end
}
