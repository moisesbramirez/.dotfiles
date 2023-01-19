local M = {}

require("tokyonight").setup({
  transparent = true,
  terminal_colors = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
})

vim.cmd("colorscheme ".."tokyonight")

function M.setItalics()
  vim.cmd("hi Comment gui=italic")
end

M.setItalics()

return M
