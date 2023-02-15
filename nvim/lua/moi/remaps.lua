local M = {}

function M.map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- better up/down
M.map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
M.map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
M.map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
M.map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
M.map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
M.map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize window using <ctrl> arrow keys
M.map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
M.map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
M.map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
M.map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Move Lines
M.map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
M.map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
M.map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
M.map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
M.map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
M.map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- better indenting
M.map("v", "<", "<gv")
M.map("v", ">", ">gv")

-- lazy
M.map("n", "<leader>l", "<cmd>:Lazy<cr>", { desc = "Lazy" })

-- new file
M.map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

M.map("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Location List" })
M.map("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Quickfix List" })

return M
