return {
   {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            { "nvim-lua/plenary.nvim", branch = "master" },
        },
        build = "make tiktoken",
        config = function()
            vim.keymap.set("n", "<leader>occ", "<cmd>CopilotChatToggle<cr>", { desc = "Toggle CopilotChat" })

            require("CopilotChat").setup({
                model = "claude-opus-4.6",
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