return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300

        local wk = require("which-key")

        wk.setup({})

        wk.add({
            { "<leader>f", group = "format" },
            { "<leader>p", group = "project/search" },
            { "<leader>v", group = "vim" },
            { "<leader>z", group = "zen" },
            { "<leader>l", group = "lsp/list" },
        })
    end,
}