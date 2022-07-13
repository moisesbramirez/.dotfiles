local M = {}

vim.cmd("colorscheme " .. "onedark")

function M.setItalics()
  vim.cmd("hi Comment gui=italic")
end

M.setItalics()

return M
