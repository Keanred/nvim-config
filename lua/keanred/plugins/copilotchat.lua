return {
   {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            { "nvim-lua/plenary.nvim", branch = "master" },
        },
        build = vim.fn.executable("make") == 1 and "make tiktoken" or false,
        config = function()
            vim.keymap.set("n", "<leader>occ", "<cmd>CopilotChatToggle<cr>", { desc = "Toggle CopilotChat" })

            require("CopilotChat").setup({
                temperature = 0.1,
                auto_insert_mode = true,
                show_help = false,
                window = {
                    layout = "vertical",
                    width = 0.45,
                },
            })
        end,
    },
}