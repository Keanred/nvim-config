return {
   {
        "sbdchd/neoformat",
        tag = "v0.4.0",
        config = function()
          vim.g.neoformat_try_node_exe = 1
          vim.g.neoformat_only_msg_on_error = 1
          vim.g.neoformat_enabled_javascript = { "prettier" }
          vim.g.neoformat_enabled_javascriptreact = { "prettier" }
          vim.g.neoformat_enabled_typescript = { "prettier" }
          vim.g.neoformat_enabled_typescriptreact = { "prettier" }
          vim.g.neoformat_enabled_json = { "prettier" }
          vim.g.neoformat_enabled_css = { "prettier" }
          vim.g.neoformat_enabled_scss = { "prettier" }
          vim.g.neoformat_enabled_markdown = { "prettier" }
          vim.g.neoformat_enabled_yaml = { "prettier" }
          vim.g.neoformat_enabled_html = { "prettier" }

          local augroup = vim.api.nvim_create_augroup
          local autocmd = vim.api.nvim_create_autocmd
          local neoformat_group = augroup("Neoformat", { clear = true })

          autocmd("BufWritePre", {
            group = neoformat_group,
            pattern = {
              "*.js",
              "*.jsx",
              "*.ts",
              "*.tsx",
              "*.json",
              "*.css",
              "*.scss",
              "*.md",
              "*.yaml",
              "*.yml",
              "*.html",
            },
            command = "Neoformat",
          })
        end,
    },
}
