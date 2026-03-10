return {
    "tpope/vim-fugitive",
    tag = "v3.7",
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Open Git status" })

        local Keanred_Fugitive = vim.api.nvim_create_augroup("Keanred_Fugitive", {})

        local autocmd = vim.api.nvim_create_autocmd
        autocmd("BufWinEnter", {
            group = Keanred_Fugitive,
            pattern = "*",
            callback = function()
                if vim.bo.ft ~= "fugitive" then
                    return
                end

                local bufnr = vim.api.nvim_get_current_buf()
                local opts = {buffer = bufnr, remap = false}
                vim.keymap.set("n", "<leader>p", function()
                    vim.cmd.Git('push')
                end, vim.tbl_extend("force", opts, { desc = "Git push" }))

                -- rebase always
                vim.keymap.set("n", "<leader>P", function()
                    vim.cmd.Git({'pull',  '--rebase'})
                end, vim.tbl_extend("force", opts, { desc = "Git pull --rebase" }))

                -- NOTE: It allows me to easily set the branch i am pushing and any tracking
                -- needed if i did not set the branch up correctly
                vim.keymap.set("n", "<leader>t", ":Git push -u origin ", vim.tbl_extend("force", opts, { desc = "Git push upstream" }));
            end,
        })


        vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>", { desc = "Get diff from left" })
        vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>", { desc = "Get diff from right" })
    end
}
