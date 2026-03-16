return {
    {
        "esmuellert/nvim-eslint",
        branch = "main",
        config = function()

      require("nvim-eslint").setup({
        settings = {
          validate = "off", -- Disable ESLint linting
          format = true, -- Enable ESLint formatting
          run = "onSave",
          -- Use local project ESLint binary
          nodePath = "node_modules/.bin/eslint",
        },
      })

      -- Formatting is now handled by Prettier (neoformat)
    end,
    }
}
