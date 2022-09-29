local M = {}

vim.cmd("colorscheme ".."tokyonight")

function M.setItalics()
  vim.cmd("hi Comment gui=italic")
end

M.setItalics()

return M
