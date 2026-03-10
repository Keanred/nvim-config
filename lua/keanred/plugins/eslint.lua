return {
    {
        "esmuellert/nvim-eslint",
        branch = "main",
        config = function()
      require("nvim-eslint").setup({
        settings = {
          validate = "on",
          format = false, -- Let Prettier handle formatting
          run = "onSave",
        },
      })

      -- Formatting is now handled by Prettier (neoformat)
    end,
    }
}
