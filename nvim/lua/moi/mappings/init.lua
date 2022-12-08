local M = {}

function M.map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.mapBuf(buf, mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_buf_set_keymap(buf, mode, lhs, rhs, options)
end

-- LSP Mappings
function M.lspMappings(client, bufnr)
  M.mapBuf(bufnr, "n", "<Leader>gdc", "<Cmd>lua vim.lsp.buf.declaration()<CR>")
  M.mapBuf(bufnr, "n", "<Leader>gd", "<Cmd>lua vim.lsp.buf.definition()<CR>")
  M.mapBuf(bufnr, "n", "<Leader>gh", "<Cmd>lua vim.lsp.buf.hover()<CR>")
  M.mapBuf(bufnr, "n", "<Leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
  M.mapBuf(bufnr, "n", "<Leader>gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
  M.mapBuf(bufnr, "n", "<Leader>gtd", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
  M.mapBuf(bufnr, "n", "<Leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
  M.mapBuf(bufnr, "n", "<Leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>")
  M.mapBuf(bufnr, "n", "<Leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
  M.mapBuf(bufnr, "v", "<Leader>ca", "<cmd>lua vim.lsp.buf.range_code_action()<CR>")
end

-- Swiching between splits/panes
M.map("n", "<c-k>", ":wincmd k<CR>", { silent = true })
M.map("n", "<c-j>", ":wincmd j<CR>", { silent = true })
M.map("n", "<c-h>", ":wincmd h<CR>", { silent = true })
M.map("n", "<c-l>", ":wincmd l<CR>", { silent = true })

-- Telescope mappings
M.map("n", "<Leader>ff", "<Cmd>lua require('telescope.builtin').git_files()<CR>")
M.map("n", "<Leader>fg", "<Cmd>lua require('telescope.builtin').live_grep()<CR>")
M.map("n", "<Leader>fb", "<Cmd>lua require('telescope.builtin').buffers()<CR>")
M.map("n", "<Leader>xd", "<Cmd>lua require('telescope.builtin').diagnostics()<CR>")

-- Run lazygit
M.map("n", "<Leader>lg", "<Cmd>terminal lazygit<CR>")

return M
