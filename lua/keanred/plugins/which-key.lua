return {
    "folke/which-key.nvim",
    tag = "v3.17.0",
    event = "VeryLazy",
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300

        local wk = require("which-key")

        wk.setup({})

        wk.add({
            { "<leader>a", group = "ai/claude" },
            { "<leader>f", group = "format" },
            { "<leader>p", group = "project/search" },
            { "<leader>v", group = "vim" },
            { "<leader>z", group = "zen" },
            { "<leader>l", group = "lsp/list" },
        })
    end,
}