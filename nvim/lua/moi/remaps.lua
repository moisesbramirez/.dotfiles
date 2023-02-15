local M = {}

function M.map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Swiching between splits/panes
M.map("n", "<c-k>", ":wincmd k<CR>", { silent = true })
M.map("n", "<c-j>", ":wincmd j<CR>", { silent = true })
M.map("n", "<c-h>", ":wincmd h<CR>", { silent = true })
M.map("n", "<c-l>", ":wincmd l<CR>", { silent = true })

return M
