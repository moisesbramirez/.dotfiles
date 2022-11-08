local map = require("moi.mappings").map

map("n", "<Leader>ff", "<Cmd>lua require('telescope.builtin').git_files()<CR>")
map("n", "<Leader>fg", "<Cmd>lua require('telescope.builtin').live_grep()<CR>")
map("n", "<Leader>fb", "<Cmd>lua require('telescope.builtin').buffers()<CR>")
