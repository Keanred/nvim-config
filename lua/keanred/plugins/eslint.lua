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
    end,
    }
}
