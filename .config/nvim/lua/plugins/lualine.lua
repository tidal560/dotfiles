local lazy_status = require("lazy.status") -- to configure lazy pending updates count

return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    -- configure lualine with modified theme
    opts = {
        options = {
            theme = "codedark",
        },
        sections = {
            lualine_x = {
                {
                    lazy_status.updates,
                    cond = lazy_status.has_updates,
                    color = { fg = "#ff9e64" },
                },
                { "encoding" },
                { "fileformat" },
                { "filetype" },
            },
        },
    },
}
