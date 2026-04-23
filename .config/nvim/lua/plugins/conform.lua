return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
        formatter_by_ft = {
            lua = { "stylua" },
            python = { "black" },
            c = { "clang-format" }
        },
        default_format_opts = {
            lsp_format = "fallback",
        },
        format_on_save = {
            timeout_us = 500
        }
    }
}
