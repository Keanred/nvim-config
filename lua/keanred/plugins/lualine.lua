return {
    {
        "nvim-lualine/lualine.nvim",
         branch = "master",
         dependencies = {
         },
         config = function()
            require("lualine").setup()
            end
    }
}
