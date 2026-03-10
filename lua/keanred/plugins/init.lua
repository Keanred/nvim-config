return {

    {
        "Mofiqul/dracula.nvim",
        name = "dracula",
        priority = 1000,
        lazy = false,
        config = function()
            SetColorscheme("dracula")
        end,
    },

    {
        "nvim-lua/plenary.nvim",
        name = "plenary",
        tag = "v0.1.4",
    },
    "eandrju/cellular-automaton.nvim",
}

