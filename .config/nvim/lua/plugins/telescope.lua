return {
  "nvim-telescope/telescope.nvim",
  tag = "v0.2.0",
  dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-tree/nvim-web-devicons",
      "folke/todo-comments.nvim",
  },
  opts = {
      defaults = {
          path_display = {
              "smart"
          },
          mappings = {
              i = {
                ["<C-k>"] = "move_selection_previous", -- move to prev result
                ["<C-j>"] = "move_selection_next", -- move to next result
              },
          },
      }
  },

  init = function ()
      require("telescope").load_extension("fzf")
  end,
}
