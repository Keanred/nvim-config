return {
   {
        "github/copilot.vim",
        config = function()
            -- Optional configuration
            vim.g.copilot_no_tab_map = true
            vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept()', { silent = true, expr = true })
        end,
    },
}
