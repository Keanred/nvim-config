return {
    {
        "esmuellert/nvim-eslint",
        branch = "main",
        config = function()
      require("nvim-eslint").setup({
        settings = {
          validate = "off",
          format = true,
          run = "onSave",
        },
      })

      local augroup = vim.api.nvim_create_augroup
      local autocmd = vim.api.nvim_create_autocmd
      local eslint_format_group = augroup("EslintFormat", { clear = true })

      autocmd("BufWritePre", {
        group = eslint_format_group,
        pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
        callback = function()
          vim.lsp.buf.format({
            async = false,
          })
        end,
      })
    end,
    }
}
