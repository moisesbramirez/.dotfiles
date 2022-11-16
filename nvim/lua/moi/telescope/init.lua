local map = require("moi.mappings").map
require("telescope").setup({
  defaults = {
    sorting_strategy = "ascending",
    layout_config = {
      prompt_position = "top",
    },
  },
})

map("n", "<Leader>ff", "<Cmd>lua require('telescope.builtin').git_files()<CR>")
map("n", "<Leader>fg", "<Cmd>lua require('telescope.builtin').live_grep()<CR>")
map("n", "<Leader>fb", "<Cmd>lua require('telescope.builtin').buffers()<CR>")
