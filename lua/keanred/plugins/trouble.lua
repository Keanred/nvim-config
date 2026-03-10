return {
    {
        "folke/trouble.nvim",
        tag = "v3.7.1",
        config = function()
            require("trouble").setup({
                icons = true,
            })

            vim.keymap.set("n", "<leader>tt", function()
                require("trouble").toggle()
            end, { desc = "Toggle Trouble" })

            vim.keymap.set("n", "[t", function()
                require("trouble").next({skip_groups = true, jump = true});
            end, { desc = "Go to next Trouble item" })

            vim.keymap.set("n", "]t", function()
                require("trouble").previous({skip_groups = true, jump = true});
            end, { desc = "Go to previous Trouble item" })

        end
    },
}
