return {
   {
        "github/copilot.vim",
        tag = "v1.59.0",
        config = function()
            -- Optional configuration
            vim.g.copilot_no_tab_map = true
            vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept()', { silent = true, expr = true })
        end,
    },
}
