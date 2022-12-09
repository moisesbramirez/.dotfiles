require("telescope").setup({
  defaults = {
    layout_config = {
      prompt_position = "top",
    },
    sorting_strategy = "ascending",
  },
  pickers = {
    buffers = {
      mappings = {
        n = {
          ["xx"] = require("telescope.actions").delete_buffer
        },
      },
    },
  }
})

