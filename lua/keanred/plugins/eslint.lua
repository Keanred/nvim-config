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
        },
      })

      -- Formatting is now handled by Prettier (neoformat)
    end,
    }
}
