return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")
        local util = require("conform.util")

        conform.setup({
            formatters_by_ft = {
                javascript = { "prettier" },
                javascriptreact = { "prettier" },
                typescript = { "prettier" },
                typescriptreact = { "prettier" },
                json = { "prettier" },
                jsonc = { "prettier" },
                yaml = { "prettier" },
                markdown = { "prettier" },
                css = { "prettier" },
                scss = { "prettier" },
                html = { "prettier" },
            },
            format_on_save = function(_)
                return {
                    timeout_ms = 1000,
                    lsp_fallback = true,
                }
            end,
        })

        conform.formatters.prettier = {
            command = util.find_executable({
                "node_modules/.bin/prettier",
            }, "prettier"),
            cwd = util.root_file({ "package.json", ".prettierrc", ".git" }),
            require_cwd = true,
        }
    end,
}
