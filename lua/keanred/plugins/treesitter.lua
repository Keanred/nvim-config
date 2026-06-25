return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter")
        local treesitter_parser_config = require("nvim-treesitter.parsers")

        treesitter_parser_config.templ = {
            install_info = {
                url = "https://github.com/vrischmann/tree-sitter-templ.git",
                files = {"src/parser.c", "src/scanner.c"},
                branch = "master",
            },
            filetype = "templ",
        }

        vim.treesitter.language.register("templ", "templ")

        treesitter.setup({
            install_dir = vim.fn.stdpath("data") .. "/site",
            auto_install = true,
            ensure_installed = {
                "bash",
                "c",
                "css",
                "go",
                "gomod",
                "gosum",
                "gowork",
                "html",
                "javascript",
                "json",
                "lua",
                "luadoc",
                "markdown",
                "markdown_inline",
                "query",
                "regex",
                "templ",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
                "yaml",
            },
        })

        local ts_features_group = vim.api.nvim_create_augroup("keanred_treesitter_features", { clear = true })

        vim.api.nvim_create_autocmd("FileType", {
            group = ts_features_group,
            callback = function(args)
                pcall(vim.treesitter.start, args.buf)
                vim.api.nvim_set_option_value("indentexpr", "v:lua.require'nvim-treesitter'.indentexpr()", { buf = args.buf })
            end,
        })
    end
}
